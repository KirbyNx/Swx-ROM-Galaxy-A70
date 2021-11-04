.class Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SMIMEThread"
.end annotation


# instance fields
.field private mAccId:J

.field private mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V
    .registers 4
    .param p1, "accountSMIME"    # Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .param p2, "accId"    # J

    .line 238
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 240
    iput-wide p2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    .line 241
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 244
    iget-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 245
    .local v0, "mSMIMECertificatePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v7, v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 246
    .local v7, "mSMIMECertificatePassWord":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget v8, v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 247
    .local v8, "mode":I
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v9, v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 248
    .local v9, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v10, 0x0

    .line 249
    .local v10, "ret":I
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMIME Certificate as Account Creation Time >>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_33
    const-string v1, "eas_account_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v1

    move-object v11, v1

    .line 252
    .local v11, "mService":Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    if-eqz v11, :cond_84

    .line 253
    const/4 v1, 0x1

    if-ne v8, v1, :cond_4f

    .line 255
    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v11

    move-object v2, v9

    move-object v5, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_84

    .line 258
    :cond_4f
    const/4 v1, 0x2

    if-ne v8, v1, :cond_5e

    .line 260
    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v11

    move-object v2, v9

    move-object v5, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_84

    .line 263
    :cond_5e
    const/4 v1, 0x3

    if-ne v8, v1, :cond_84

    .line 265
    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v11

    move-object v2, v9

    move-object v5, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_6b} :catch_79
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_6b} :catch_6d

    move v10, v1

    goto :goto_84

    .line 272
    .end local v11    # "mService":Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    :catch_6d
    move-exception v1

    .line 273
    .local v1, "ex":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIMEThread : unexpected Exception occurs. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v10, 0x0

    goto :goto_85

    .line 269
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_79
    move-exception v1

    .line 270
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIMEThread : Failed talking with exchange account policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v10, 0x0

    .line 275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_84
    :goto_84
    nop

    .line 276
    :goto_85
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<<<<< SMIME Certificate as Account Creation Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method
