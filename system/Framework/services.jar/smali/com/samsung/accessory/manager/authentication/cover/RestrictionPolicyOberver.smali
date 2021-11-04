.class public Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.super Ljava/lang/Object;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;,
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    }
.end annotation


# static fields
.field static final BLOCKED_BOTH:I = 0x3

.field static final BLOCKED_FELICA:I = 0x2

.field static final BLOCKED_MDM:I = 0x1

.field static final NON_BLOCKED:I

.field private static final TAG:Ljava/lang/String;

.field private static mCr:Landroid/content/ContentResolver;

.field static mIsFelicaAllowed:Z

.field static mIsMdmAllowed:Z

.field private static mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

.field static mPendingFelicaNotification:Z


# instance fields
.field mBootCompleted:Z

.field mContext:Landroid/content/Context;

.field mFelicaReceiver:Landroid/content/BroadcastReceiver;

.field mFelicaReceiverInitialized:Z

.field mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    .line 39
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mPendingFelicaNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    .line 42
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    .line 183
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    .line 119
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->registerObservers()V

    .line 121
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    .line 122
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 24
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    .registers 1

    .line 24
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 24
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    return-void
.end method

.method private buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;
    .registers 2

    .line 135
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;-><init>()V

    return-object v0
.end method

.method public static getBlockedType()I
    .registers 1

    .line 69
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v0, :cond_a

    .line 70
    const/4 v0, 0x3

    return v0

    .line 71
    :cond_a
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v0, :cond_10

    .line 72
    const/4 v0, 0x2

    return v0

    .line 73
    :cond_10
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v0, :cond_16

    .line 74
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized getMdmPolicy()Z
    .registers 9

    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    monitor-enter v0

    .line 88
    const/4 v1, 0x1

    .line 90
    .local v1, "allowed":Z
    :try_start_4
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 91
    .local v4, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const-string/jumbo v6, "isNFCEnabled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 94
    .local v2, "restrictionCr":Landroid/database/Cursor;
    if-eqz v2, :cond_4c

    .line 95
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_4e

    .line 98
    :try_start_1b
    const-string/jumbo v3, "isNFCEnabled"

    .line 100
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 99
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "result":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 102
    const/4 v1, 0x1

    goto :goto_3a

    .line 103
    :cond_31
    const-string v5, "false"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_37
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1b .. :try_end_37} :catch_40
    .catchall {:try_start_1b .. :try_end_37} :catchall_3e

    if-eqz v5, :cond_3a

    .line 104
    const/4 v1, 0x0

    .line 109
    .end local v3    # "result":Ljava/lang/String;
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4e

    .line 110
    :goto_3d
    goto :goto_4c

    .line 109
    :catchall_3e
    move-exception v3

    goto :goto_48

    .line 106
    :catch_40
    move-exception v3

    .line 107
    .local v3, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_41
    invoke-virtual {v3}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    .line 109
    .end local v3    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :goto_48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    throw v3
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4e

    .line 113
    .end local v2    # "restrictionCr":Landroid/database/Cursor;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4c
    :goto_4c
    monitor-exit v0

    return v1

    .line 87
    .end local v1    # "allowed":Z
    :catchall_4e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNfcAdapter()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 161
    :cond_c
    return-void
.end method

.method public static isAuthenticatonAllowed()Z
    .registers 1

    .line 81
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-eqz v0, :cond_a

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private registerObservers()V
    .registers 5

    .line 139
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    .line 140
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    move-result-object v2

    .line 139
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    return-void
.end method


# virtual methods
.method public getFelicaPolicy()V
    .registers 5

    .line 165
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    .line 166
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 167
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    goto :goto_19

    .line 172
    :cond_12
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const-string v2, "Do not call when nfc service is not ready"

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_19
    :goto_19
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    if-nez v0, :cond_32

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    .line 181
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_32
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    .line 132
    return-void
.end method

.method public setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .line 49
    sput-object p1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .line 50
    return-void
.end method

.method public showFelicaNotification()V
    .registers 4

    .line 147
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    if-nez v0, :cond_8

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mPendingFelicaNotification:Z

    goto :goto_20

    .line 150
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.applinker.action.FELICA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.applinker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_20
    return-void
.end method
