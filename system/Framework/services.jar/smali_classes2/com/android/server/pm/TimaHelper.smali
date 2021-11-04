.class public Lcom/android/server/pm/TimaHelper;
.super Ljava/lang/Object;
.source "TimaHelper.java"


# static fields
.field public static ALIAS_PERSONA_FS:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWD:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWDHINT:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final TIMA_LOG_TAG:Ljava/lang/String; = "TimaHelper"

.field private static final TYPE_TIMA_FIPS_KEYSTORE:Ljava/lang/String; = "FipsTimaKeyStore"

.field private static final TYPE_TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static mTimaHelper:Lcom/android/server/pm/TimaHelper;


# instance fields
.field private mTksName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 357
    const-string v0, "ecryptfsKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_FS:Ljava/lang/String;

    .line 359
    const-string v0, "PersonaPasswordKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD:Ljava/lang/String;

    .line 361
    const-string v0, "PersonaPasswordHintKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWDHINT:Ljava/lang/String;

    .line 363
    const-string v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->initTimaHelper()V

    .line 40
    const-string v0, "TimaHelper"

    const-string v1, "TimaHelper created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private checkTimaError(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "timaStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    .line 271
    packed-switch p2, :pswitch_data_e

    .line 289
    return-void

    .line 276
    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 286
    new-instance v0, Lcom/android/server/pm/TimaException;

    invoke-direct {v0}, Lcom/android/server/pm/TimaException;-><init>()V

    throw v0

    nop

    :pswitch_data_e
    .packed-switch 0x1000c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 5
    .param p1, "id"    # I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "password":Ljava/lang/String;
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/TimaHelper;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/android/server/pm/TimaHelper;

    invoke-direct {v0}, Lcom/android/server/pm/TimaHelper;-><init>()V

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 47
    :cond_b
    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 116
    const-string v0, "TimaHelper"

    const/4 v1, 0x0

    .line 118
    .local v1, "ks":Ljava/security/KeyStore;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v1, v2

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_e
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    .line 126
    nop

    .line 127
    return-object v1

    .line 123
    :catch_10
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load TKS instance... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    throw v2

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v2

    .line 121
    .local v2, "e":Ljava/security/KeyStoreException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get TKS instance... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    throw v2
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 2

    .line 292
    nop

    .line 293
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 294
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private initTimaHelper()V
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->isFipsAvilable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    const-string v0, "FIPS3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 53
    const-string v0, "FipsTimaKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    goto :goto_17

    .line 55
    :cond_f
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 56
    const-string v0, "TIMAKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    .line 58
    :goto_17
    const-string/jumbo v0, "initTimaHelper()"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public checkEntry(ILjava/lang/String;)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 140
    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public checkTimaStatus(I)Z
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->getTimaStatus()I

    move-result v0

    .line 71
    .local v0, "timaStatus":I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 72
    .local v1, "result":Z
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTimaStatus() - Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Validation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimaHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/TimaHelper;->checkTimaError(II)V

    .line 75
    return v1
.end method

.method public deleteEntry(ILjava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 242
    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 131
    sget-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 132
    :cond_5
    const-string v0, "TimaHelper"

    const-string v1, "### Dump of TimaHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_22

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### TimaHelper = { TksName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public getEntry(ILjava/lang/String;)[B
    .registers 5
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 203
    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimaStatus()I
    .registers 8

    .line 79
    const-string v0, "TimaHelper"

    const/4 v1, -0x1

    .line 80
    .local v1, "timaStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 81
    .local v2, "token":J
    const/4 v4, 0x0

    .line 84
    .local v4, "errMessage":Ljava/lang/String;
    :try_start_8
    const-string v5, "Skip ICCC check"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_14
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 85
    const/4 v0, 0x0

    .line 108
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    return v0

    .line 108
    :catchall_12
    move-exception v0

    goto :goto_51

    .line 104
    :catch_14
    move-exception v5

    .line 105
    .local v5, "e":Ljava/lang/Exception;
    :try_start_15
    const-string/jumbo v6, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_2d

    .line 101
    :catch_21
    move-exception v5

    .line 102
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_12

    move-object v4, v6

    .line 108
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    nop

    .line 110
    if-eqz v1, :cond_50

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimaStatus() - Tima Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_50
    return v1

    .line 108
    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw v0
.end method

.method public getTimaVersion()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isFipsAvilable()Z
    .registers 2

    .line 62
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    return v0
.end method

.method public isTimaAvailable()Z
    .registers 3

    .line 304
    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public migrateToFips30(I)Z
    .registers 18
    .param p1, "personaId"    # I

    .line 312
    move/from16 v1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migrateToFips30 - Migrate all keys in Tima 3.0 KS to fips certificated... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimaHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWDHINT:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v0, v6

    sget-object v3, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_FS:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v3, v0, v6

    move-object v3, v0

    .line 317
    .local v3, "entries":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 318
    .local v6, "oldKeystore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    .line 319
    .local v7, "newKeystore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    .line 320
    .local v8, "result":Z
    const/4 v9, 0x0

    .line 323
    .local v9, "hitCount":I
    :try_start_35
    const-string v0, "TIMAKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    move-object v6, v0

    .line 324
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 326
    const-string v10, "FipsTimaKeyStore"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    move-object v7, v10

    .line 327
    invoke-virtual {v7, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 329
    array-length v0, v3

    move v10, v4

    :goto_4c
    if-ge v10, v0, :cond_d0

    aget-object v11, v3, v10

    .line 330
    .local v11, "entry":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, "alias":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v13
    :try_end_63
    .catch Ljava/security/KeyStoreException; {:try_start_35 .. :try_end_63} :catch_cc
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_35 .. :try_end_63} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_63} :catch_c7

    const-string v14, " from keystore"

    if-eqz v13, :cond_ac

    .line 333
    :try_start_67
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v13

    check-cast v13, Ljava/security/KeyStore$SecretKeyEntry;

    .line 334
    .local v13, "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v13, :cond_94

    .line 335
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found key : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    invoke-virtual {v7, v12, v13, v4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 337
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    .line 339
    :cond_94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get a key : "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v13    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :goto_ab
    goto :goto_c3

    .line 342
    :cond_ac
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key not found : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/security/KeyStoreException; {:try_start_67 .. :try_end_c3} :catch_cc
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_67 .. :try_end_c3} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_c3} :catch_c7

    .line 329
    .end local v11    # "entry":Ljava/lang/String;
    .end local v12    # "alias":Ljava/lang/String;
    :goto_c3
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_4c

    .line 347
    :catch_c7
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d1

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_cc
    move-exception v0

    .line 346
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 349
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_d0
    nop

    .line 351
    :goto_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration hit count : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-lez v9, :cond_e9

    move v4, v5

    goto :goto_ea

    :cond_e9
    const/4 v4, 0x0

    :goto_ea
    move v0, v4

    .line 353
    .end local v8    # "result":Z
    .local v0, "result":Z
    return v0
.end method

.method public setEntry(ILjava/lang/String;[B)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "entry"    # [B

    .line 169
    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return v0
.end method
