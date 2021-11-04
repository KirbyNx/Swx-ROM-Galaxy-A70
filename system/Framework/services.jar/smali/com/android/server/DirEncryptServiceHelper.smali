.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "DirEncryptServiceHelper"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

.field private static mMountSDcardToHelper:Z

.field private static mNeedToCreateKey:Z

.field private static mNotificationChannelID:Ljava/lang/String;

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private mAlreadyDecrypted:Z

.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDecryptTimestamp:Ljava/lang/String;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private mEncryptTimestamp:Ljava/lang/String;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/security/IDirEncryptServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPercent:I

.field private mProgressTime:J

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mUnnmountRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 84
    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 106
    const-string/jumbo v0, "sdcard_encryption_channel"

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 70
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 72
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 87
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 91
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 92
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 93
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 95
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 98
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 103
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 118
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 320
    invoke-static {p1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 321
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 322
    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 327
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .line 57
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .line 57
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .line 57
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    return-object v0
.end method

.method private checkSdCardMetafile()V
    .registers 12

    .line 879
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 880
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 882
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 883
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    .line 886
    .local v1, "isPolicy":I
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    .line 887
    .local v2, "mUserUnlocked":Z
    const/4 v3, 0x0

    .line 889
    .local v3, "skipMounting":Z
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_23

    .line 890
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-eqz v4, :cond_21

    .line 891
    move v4, v5

    goto :goto_22

    :cond_21
    move v4, v0

    :goto_22
    move v3, v4

    .line 894
    :cond_23
    if-eqz v2, :cond_26

    const/4 v3, 0x0

    .line 898
    :cond_26
    const-string/jumbo v4, "sec.fle.encryption.status"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, "isExistMeta":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSdCardMetafile result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " unlocked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " Policy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " skipMounting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DirEncryptServiceHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v6, "encrypted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "checkSdCardMetafile but user locked yet"

    if-eqz v6, :cond_7e

    .line 903
    const-string v6, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-eqz v3, :cond_72

    .line 905
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void

    .line 910
    :cond_72
    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 911
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_cf

    .line 912
    :cond_7e
    const-string v6, "decrypting"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "ENC_META_CHECK : EAS Policy Set"

    if-nez v9, :cond_aa

    const-string v9, "encrypting"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    goto :goto_aa

    .line 926
    :cond_91
    if-ne v1, v5, :cond_9a

    .line 927
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_cf

    .line 930
    :cond_9a
    const-string v6, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 934
    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 936
    const/4 v5, 0x3

    const-string v6, "done"

    invoke-direct {p0, v5, v6}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_cf

    .line 913
    :cond_aa
    :goto_aa
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    if-ne v1, v5, :cond_b9

    .line 914
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_cf

    .line 917
    :cond_b9
    const-string v6, "SD card has encrypting/decrypting state -> Self Encrypting/Decrypting!!"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    if-eqz v3, :cond_c4

    .line 919
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 922
    :cond_c4
    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 923
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 939
    :goto_cf
    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 940
    return-void
.end method

.method private clearNotification()V
    .registers 3

    .line 966
    const-string v0, "DirEncryptServiceHelper"

    const-string v1, "clearNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 968
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 969
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 970
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 971
    return-void
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .registers 16
    .param p1, "state"    # Ljava/lang/String;

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWorkForUSBState:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string/jumbo v0, "vold.decrypt"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "encryptBoot":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 694
    const-string v2, "Do not work if encryption lock page"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void

    .line 698
    :cond_2e
    const-string v2, "HiddenMount"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "encrypted"

    const-string/jumbo v4, "sec.fle.encryption.status"

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v2, :cond_90

    .line 710
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 712
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 713
    .local v2, "currentUid":I
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 714
    .local v7, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v8, :cond_77

    .line 715
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 717
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "isExistMeta":Ljava/lang/String;
    const/4 v5, 0x0

    .line 719
    .local v5, "doEncrypt":Z
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "encrypting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 720
    :cond_65
    const/4 v5, 0x1

    .line 723
    :cond_66
    :try_start_66
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getStorageManagerService()Landroid/os/storage/IStorageManager;

    move-result-object v3

    .line 724
    .local v3, "service":Landroid/os/storage/IStorageManager;
    if-eqz v3, :cond_6f

    .line 725
    invoke-interface {v3, v5}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6f} :catch_70

    .line 729
    .end local v3    # "service":Landroid/os/storage/IStorageManager;
    :cond_6f
    goto :goto_76

    .line 727
    :catch_70
    move-exception v3

    .line 728
    .local v3, "re":Landroid/os/RemoteException;
    const-string v6, "Unable to communicate with Mountservice"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v3    # "re":Landroid/os/RemoteException;
    .end local v4    # "isExistMeta":Ljava/lang/String;
    .end local v5    # "doEncrypt":Z
    :goto_76
    goto :goto_8e

    .line 732
    :cond_77
    :try_start_77
    const-string/jumbo v1, "vold.crypto.ext_migrate"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "migrateProperty":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 734
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_89} :catch_8a

    .line 738
    .end local v1    # "migrateProperty":Ljava/lang/String;
    :cond_89
    goto :goto_8e

    .line 736
    :catch_8a
    move-exception v1

    .line 737
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "currentUid":I
    .end local v7    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :goto_8e
    goto/16 :goto_1af

    :cond_90
    const-string v2, "MoveMount"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "Mount"

    const-string/jumbo v8, "success"

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v2, :cond_f1

    .line 749
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v2

    if-nez v2, :cond_cb

    iget v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_cb

    .line 751
    const-string v2, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 753
    invoke-direct {p0, v9, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 754
    const-string v2, "delete uuid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    if-nez v2, :cond_c4

    .line 757
    invoke-direct {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_1af

    .line 759
    :cond_c4
    const-string v2, "don\'t send encryption notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1af

    .line 761
    :cond_cb
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v2

    if-nez v2, :cond_e4

    .line 762
    const-string/jumbo v2, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 764
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 765
    const-string v1, "busy"

    invoke-direct {p0, v9, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1af

    .line 766
    :cond_e4
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 770
    const-string v2, "MOVE_MOUNT => ENCRYPTING, ENCRYPTED or OTHER_ENCRYPT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1af

    .line 772
    :cond_f1
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x1

    const-string/jumbo v12, "free"

    if-eqz v2, :cond_14f

    .line 773
    const-string v2, "Update SD card encryption status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string/jumbo v2, "sec.vold.ext_encrypted_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "encryptionType":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "encryptionStatus":Ljava/lang/String;
    const-string v13, "block"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_148

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 777
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 778
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 779
    invoke-direct {p0, v10, v11, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 780
    invoke-direct {p0, v10, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ENCRYPT Response admin : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 785
    iput-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_14e

    .line 787
    :cond_148
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 788
    invoke-direct {p0, v9, v12}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 790
    .end local v2    # "encryptionType":Ljava/lang/String;
    .end local v4    # "encryptionStatus":Ljava/lang/String;
    :goto_14e
    goto :goto_1af

    :cond_14f
    const-string/jumbo v2, "removed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 791
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 792
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 793
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 795
    const-string v2, "SD card removed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 798
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 799
    invoke-direct {p0, v6, v12}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_1af

    .line 800
    :cond_16d
    const-string/jumbo v2, "unmounted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 801
    const-string v2, "SD card unmounted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v1, :cond_182

    .line 803
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 806
    :cond_182
    iget-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne v1, v11, :cond_1af

    .line 807
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 809
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0, v1, v6, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_1af

    .line 811
    :cond_18f
    const-string v2, "bad_removal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 812
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 813
    const-string v2, "SD card bad removed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v1, :cond_1ab

    .line 815
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 816
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 817
    invoke-direct {p0, v6, v12}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 820
    :cond_1ab
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 821
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 823
    :cond_1af
    :goto_1af
    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .registers 6

    .line 1139
    const-string v0, "Unknown"

    .line 1141
    .local v0, "time":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1142
    .local v1, "FORMAT":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1a

    move-object v0, v2

    .line 1145
    .end local v1    # "FORMAT":Ljava/text/SimpleDateFormat;
    goto :goto_31

    .line 1143
    :catch_1a
    move-exception v1

    .line 1144
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DirEncryptServiceHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_31
    return-object v0
.end method

.method private getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 8
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;

    .line 945
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 946
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 947
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 948
    if-eqz p1, :cond_13

    .line 949
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 950
    :cond_13
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 951
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 952
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 953
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 954
    sget-object v1, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 956
    return-object v0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .registers 4

    .line 960
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    return-object v0
.end method

.method private static getStorageManagerService()Landroid/os/storage/IStorageManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 111
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 113
    :cond_e
    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTopClassName()Ljava/lang/String;
    .registers 5

    .line 854
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 855
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, ""

    .line 856
    .local v1, "topTaskClass":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 857
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 858
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 860
    :cond_24
    return-object v1
.end method

.method private isAdminApplied()I
    .registers 4

    .line 675
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 676
    .local v0, "adminPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 678
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 680
    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 681
    return v2

    .line 684
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method private isCryptSDCardSettings()Z
    .registers 3

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCryptSDCardSettings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$CryptSDCardSettingsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 849
    const/4 v0, 0x1

    return v0

    .line 850
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportBlockEncryption()Z
    .registers 1

    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .registers 4
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;

    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    .line 618
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .registers 15
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "storage"    # I

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyEncryptionStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 623
    :try_start_22
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 624
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_7c

    .line 625
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/security/IDirEncryptServiceListener;
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_83

    .line 627
    .local v3, "listener":Lcom/samsung/android/security/IDirEncryptServiceListener;
    :try_start_33
    const-string v4, "DirEncryptServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/security/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_57} :catch_70
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_57} :catch_58
    .catchall {:try_start_33 .. :try_end_57} :catchall_83

    .line 633
    goto :goto_79

    .line 631
    :catch_58
    move-exception v4

    .line 632
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_59
    const-string v5, "DirEncryptServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 629
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_70
    move-exception v4

    .line 630
    .local v4, "rex":Landroid/os/RemoteException;
    const-string v5, "DirEncryptServiceHelper"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    nop

    .line 624
    .end local v3    # "listener":Lcom/samsung/android/security/IDirEncryptServiceListener;
    .end local v4    # "rex":Landroid/os/RemoteException;
    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 635
    .end local v2    # "i":I
    :cond_7c
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 636
    .end local v1    # "n":I
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_59 .. :try_end_85} :catchall_83

    throw v1
.end method

.method private setStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 373
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "encType"    # I
    .param p3, "status"    # Ljava/lang/String;

    .line 974
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v11, 0x0

    .line 975
    .local v11, "notification":Landroid/app/Notification;
    const/4 v1, 0x0

    .line 976
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, ""

    .line 977
    .local v2, "tickerText":Ljava/lang/String;
    const-string v3, ""

    .line 978
    .local v3, "contentText":Ljava/lang/String;
    const-string v4, ""

    .line 980
    .local v4, "contentTitle":Ljava/lang/String;
    const/4 v5, 0x0

    .line 982
    .local v5, "icon":I
    const/4 v12, 0x2

    const v13, 0x1040ab5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_2cc

    const/4 v15, 0x6

    const/4 v0, 0x5

    const/4 v6, 0x0

    if-eq v8, v12, :cond_1ea

    const/4 v12, 0x3

    if-eq v8, v12, :cond_196

    if-eq v8, v0, :cond_15a

    if-eq v8, v15, :cond_f9

    const/4 v0, 0x7

    if-eq v8, v0, :cond_c8

    const/16 v0, 0xa

    if-eq v8, v0, :cond_91

    const/16 v0, 0xb

    if-eq v8, v0, :cond_3d

    .line 1116
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1117
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1119
    :cond_3c
    return-void

    .line 1078
    :cond_3d
    if-ne v9, v14, :cond_5a

    .line 1079
    const v5, 0x1080300

    .line 1080
    iget-object v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1081
    iget-object v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x1040ab2

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_77

    .line 1083
    :cond_5a
    const v5, 0x108029f

    .line 1084
    iget-object v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x1040ab0

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1085
    iget-object v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x1040aad

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1087
    :goto_77
    iput v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1088
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x8000000

    invoke-static {v0, v6, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1089
    move-object v4, v2

    .line 1090
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    goto/16 :goto_314

    .line 1107
    :cond_91
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040abd

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040abc

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1109
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x8000000

    invoke-static {v0, v6, v12, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1110
    iput v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1111
    const v5, 0x108007b

    .line 1112
    move-object v4, v2

    .line 1113
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    goto/16 :goto_314

    .line 984
    :cond_c8
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040adb

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 985
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040ada

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 987
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v12

    const/high16 v15, 0x8000000

    invoke-static {v0, v6, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 988
    const v5, 0x1080301

    .line 989
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    goto/16 :goto_314

    .line 1062
    :cond_f9
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1063
    if-ne v9, v14, :cond_11f

    .line 1064
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    .end local v2    # "tickerText":Ljava/lang/String;
    .local v0, "tickerText":Ljava/lang/String;
    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x1040ab2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1066
    .end local v3    # "contentText":Ljava/lang/String;
    .local v2, "contentText":Ljava/lang/String;
    const v3, 0x1080300

    move v5, v3

    move-object v3, v2

    move-object v2, v0

    .end local v5    # "icon":I
    .local v3, "icon":I
    goto :goto_13f

    .line 1068
    .end local v0    # "tickerText":Ljava/lang/String;
    .local v2, "tickerText":Ljava/lang/String;
    .local v3, "contentText":Ljava/lang/String;
    .restart local v5    # "icon":I
    :cond_11f
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040ab0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .end local v2    # "tickerText":Ljava/lang/String;
    .restart local v0    # "tickerText":Ljava/lang/String;
    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x1040aad

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .end local v3    # "contentText":Ljava/lang/String;
    .local v2, "contentText":Ljava/lang/String;
    const v3, 0x108029f

    move v5, v3

    move-object v3, v2

    move-object v2, v0

    .line 1072
    .end local v0    # "tickerText":Ljava/lang/String;
    .local v2, "tickerText":Ljava/lang/String;
    .restart local v3    # "contentText":Ljava/lang/String;
    :goto_13f
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x8000000

    invoke-static {v0, v6, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1073
    const/4 v0, 0x4

    iput v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1074
    move-object v4, v2

    .line 1075
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    goto/16 :goto_314

    .line 1043
    :cond_15a
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1044
    .local v12, "progress":I
    iget-object v15, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v15

    .line 1046
    :try_start_161
    iget-wide v13, v7, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v16, -0x1

    cmp-long v0, v13, v16

    if-nez v0, :cond_16f

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v7, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1049
    :cond_16f
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    # setter for: Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I
    invoke-static {v0, v12}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->access$702(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1050
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    # setter for: Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I
    invoke-static {v0, v9}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->access$802(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1051
    if-nez v12, :cond_188

    .line 1053
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1054
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_191

    .line 1055
    :cond_188
    const/16 v0, 0x64

    if-ne v0, v12, :cond_191

    .line 1056
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1058
    :cond_191
    :goto_191
    monitor-exit v15

    .line 1059
    return-void

    .line 1058
    :catchall_193
    move-exception v0

    monitor-exit v15
    :try_end_195
    .catchall {:try_start_161 .. :try_end_195} :catchall_193

    throw v0

    .line 1093
    .end local v12    # "progress":I
    :cond_196
    if-ne v9, v14, :cond_1b4

    .line 1094
    const v0, 0x1080300

    .line 1095
    .end local v5    # "icon":I
    .local v0, "icon":I
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1096
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x1040ab2

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v0

    goto :goto_1d2

    .line 1098
    .end local v0    # "icon":I
    .restart local v5    # "icon":I
    :cond_1b4
    const v0, 0x1080300

    .line 1099
    .end local v5    # "icon":I
    .restart local v0    # "icon":I
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x1040ab0

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1100
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x1040aad

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v0

    .line 1102
    .end local v0    # "icon":I
    .restart local v5    # "icon":I
    :goto_1d2
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x8000000

    invoke-static {v0, v6, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1103
    move-object v4, v2

    .line 1104
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    goto/16 :goto_314

    .line 992
    :cond_1ea
    const/16 v12, 0x8

    const v15, 0x1040aae

    if-ne v9, v14, :cond_259

    .line 993
    iget-object v14, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 994
    const-string/jumbo v14, "success"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21a

    .line 995
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040ab4

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 996
    .end local v3    # "contentText":Ljava/lang/String;
    .local v0, "contentText":Ljava/lang/String;
    iput v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 997
    const v3, 0x1080301

    move v5, v3

    move-object v3, v0

    .end local v5    # "icon":I
    .local v3, "icon":I
    goto/16 :goto_2c3

    .line 998
    .end local v0    # "contentText":Ljava/lang/String;
    .local v3, "contentText":Ljava/lang/String;
    .restart local v5    # "icon":I
    :cond_21a
    const-string v14, "exception"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_235

    .line 999
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .end local v3    # "contentText":Ljava/lang/String;
    .restart local v0    # "contentText":Ljava/lang/String;
    iput v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1001
    const v3, 0x1080300

    move v5, v3

    move-object v3, v0

    .end local v5    # "icon":I
    .local v3, "icon":I
    goto/16 :goto_2c3

    .line 1003
    .end local v0    # "contentText":Ljava/lang/String;
    .local v3, "contentText":Ljava/lang/String;
    .restart local v5    # "icon":I
    :cond_235
    iget-object v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x8000000

    invoke-static {v12, v6, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1004
    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x1040ab2

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1005
    iput v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1006
    const v0, 0x1080300

    move v5, v0

    .end local v5    # "icon":I
    .local v0, "icon":I
    goto/16 :goto_2c3

    .line 1009
    .end local v0    # "icon":I
    .restart local v5    # "icon":I
    :cond_259
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x1040ab0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1010
    const-string/jumbo v0, "success"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_284

    .line 1011
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1040aaf

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .end local v3    # "contentText":Ljava/lang/String;
    .local v0, "contentText":Ljava/lang/String;
    iput v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1013
    const v3, 0x10802a0

    move v5, v3

    move-object v3, v0

    .end local v5    # "icon":I
    .local v3, "icon":I
    goto :goto_2c3

    .line 1014
    .end local v0    # "contentText":Ljava/lang/String;
    .local v3, "contentText":Ljava/lang/String;
    .restart local v5    # "icon":I
    :cond_284
    const-string v0, "exception"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 1015
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .end local v3    # "contentText":Ljava/lang/String;
    .restart local v0    # "contentText":Ljava/lang/String;
    iput v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1017
    const v3, 0x108029f

    move v5, v3

    move-object v3, v0

    .end local v5    # "icon":I
    .local v3, "icon":I
    goto :goto_2c3

    .line 1019
    .end local v0    # "contentText":Ljava/lang/String;
    .local v3, "contentText":Ljava/lang/String;
    .restart local v5    # "icon":I
    :cond_29e
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v14, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x8000000

    invoke-static {v0, v6, v12, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1020
    .end local v1    # "pending":Landroid/app/PendingIntent;
    .local v0, "pending":Landroid/app/PendingIntent;
    iget-object v1, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1040aad

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1021
    .end local v3    # "contentText":Ljava/lang/String;
    .local v1, "contentText":Ljava/lang/String;
    const/4 v3, 0x6

    iput v3, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1022
    const v3, 0x108029f

    move v5, v3

    move-object v3, v1

    move-object v1, v0

    .line 1025
    .end local v0    # "pending":Landroid/app/PendingIntent;
    .local v1, "pending":Landroid/app/PendingIntent;
    .restart local v3    # "contentText":Ljava/lang/String;
    :goto_2c3
    move-object v4, v2

    .line 1026
    move-object v2, v3

    .line 1027
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    goto :goto_314

    .line 1030
    :cond_2cc
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2ed

    .line 1031
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .end local v2    # "tickerText":Ljava/lang/String;
    .local v0, "tickerText":Ljava/lang/String;
    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1040ab6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1033
    .end local v3    # "contentText":Ljava/lang/String;
    .local v2, "contentText":Ljava/lang/String;
    const v3, 0x1080301

    move v5, v3

    move-object v3, v2

    move-object v2, v0

    .end local v5    # "icon":I
    .local v3, "icon":I
    goto :goto_30d

    .line 1035
    .end local v0    # "tickerText":Ljava/lang/String;
    .local v2, "tickerText":Ljava/lang/String;
    .local v3, "contentText":Ljava/lang/String;
    .restart local v5    # "icon":I
    :cond_2ed
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1040ab0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .end local v2    # "tickerText":Ljava/lang/String;
    .restart local v0    # "tickerText":Ljava/lang/String;
    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1040ab1

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1037
    .end local v3    # "contentText":Ljava/lang/String;
    .local v2, "contentText":Ljava/lang/String;
    const v3, 0x10802a0

    move v5, v3

    move-object v3, v2

    move-object v2, v0

    .line 1039
    .end local v0    # "tickerText":Ljava/lang/String;
    .local v2, "tickerText":Ljava/lang/String;
    .restart local v3    # "contentText":Ljava/lang/String;
    :goto_30d
    move-object v4, v2

    .line 1040
    move-object v0, v1

    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v17, v5

    .line 1122
    .end local v1    # "pending":Landroid/app/PendingIntent;
    .end local v2    # "tickerText":Ljava/lang/String;
    .end local v3    # "contentText":Ljava/lang/String;
    .end local v4    # "contentTitle":Ljava/lang/String;
    .end local v5    # "icon":I
    .local v0, "pending":Landroid/app/PendingIntent;
    .local v12, "tickerText":Ljava/lang/String;
    .local v14, "contentText":Ljava/lang/String;
    .local v15, "contentTitle":Ljava/lang/String;
    .local v17, "icon":I
    :goto_314
    iget-object v1, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_321

    .line 1123
    iget-object v1, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1126
    :cond_321
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, v17

    move-object v4, v15

    move-object v5, v14

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1127
    .end local v11    # "notification":Landroid/app/Notification;
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_36a

    .line 1128
    iget v2, v1, Landroid/app/Notification;->flags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1129
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1130
    iget v2, v1, Landroid/app/Notification;->defaults:I

    const/4 v3, 0x4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1132
    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1133
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1134
    sget v3, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1136
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_36a
    return-void
.end method

.method private startCryptSDCardSettingsActivity()V
    .registers 6

    .line 864
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isCryptSDCardSettings()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 865
    const-string v0, "DirEncryptServiceHelper"

    const-string/jumbo v1, "startCryptSDCardSettingsActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10400000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 868
    sget-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    if-nez v2, :cond_3a

    .line 870
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_23} :catch_24

    .line 873
    goto :goto_3a

    .line 871
    :catch_24
    move-exception v2

    .line 872
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCryptSDCardSettingsActivity Failed to start intent activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private unmountSDCard()V
    .registers 2

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 643
    :try_start_3
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 646
    goto :goto_d

    .line 644
    :catch_9
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 406
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xa

    if-eq v1, v2, :cond_17

    .line 423
    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Invalid command!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 419
    :cond_17
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    .line 420
    goto :goto_3f

    .line 413
    :cond_1d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 414
    .local v1, "state":Ljava/lang/String;
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command.USB_STATE:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 416
    goto :goto_3f

    .line 409
    .end local v1    # "state":Ljava/lang/String;
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    .line 410
    nop

    .line 425
    :goto_3f
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    .line 351
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getDecryptTimestamp()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptTimestamp()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLastError()I
    .registers 2

    .line 355
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .registers 2

    .line 347
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    const-string v2, "DirEncryptServiceHelper"

    if-eqz v1, :cond_42

    .line 598
    const-string v1, "EncPrefs found"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v1, "************************************************"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-nez p1, :cond_23

    .line 602
    const-string/jumbo v3, "param is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p1

    .line 605
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSdCardEncryptionPreferences : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    goto :goto_47

    .line 610
    :cond_42
    const-string v1, "EncPrefs not found"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_47
    return-object v0
.end method

.method public isSdCardEncryped()Z
    .registers 8

    .line 826
    const-string/jumbo v0, "sec.fle.encryption.status"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "isExistMeta":Ljava/lang/String;
    const-string/jumbo v2, "persist.vold.ext_encrypted_type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "isEncryptionType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "state":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSdCardEncryped state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isExistMeta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEncryptionType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DirEncryptServiceHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    if-eqz v2, :cond_75

    .line 833
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->isSupportBlockEncryption()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "encrypted"

    const-string/jumbo v6, "mounted"

    if-eqz v3, :cond_60

    .line 834
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 835
    const-string v3, "block"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 836
    :cond_5f
    return v4

    .line 838
    :cond_60
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 839
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "encrypting"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 840
    :cond_74
    return v4

    .line 843
    :cond_75
    const/4 v3, 0x0

    return v3
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 2

    .line 394
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v0

    return v0
.end method

.method public onEventInner(ILandroid/os/PersistableBundle;)Z
    .registers 19
    .param p1, "resp_code"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 430
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v4, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 431
    :try_start_9
    const-string/jumbo v0, "path"

    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 433
    .local v5, "status":I
    const-string v6, "description"

    invoke-virtual {v3, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "description":Ljava/lang/String;
    const-string v7, "arg1"

    invoke-virtual {v3, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 435
    .local v7, "arg1":I
    const-string v8, "arg2"

    invoke-virtual {v3, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 436
    .local v8, "arg2":I
    const-string v9, "DirEncryptServiceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onEventInner resp_code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " status : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_26c

    :pswitch_50
    goto/16 :goto_265

    .line 532
    :pswitch_52
    move v9, v7

    .line 534
    .local v9, "ro":I
    const/16 v10, 0xb

    iput v10, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 535
    const-string v15, ""

    invoke-direct {v1, v10, v5, v15}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 536
    invoke-direct {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 537
    if-nez v5, :cond_62

    goto :goto_63

    :cond_62
    move v11, v13

    :goto_63
    const-string/jumbo v10, "free"

    invoke-direct {v1, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 539
    goto/16 :goto_265

    .line 550
    .end local v9    # "ro":I
    :pswitch_6b
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 551
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 553
    iput-boolean v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 555
    iget-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v9}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v9

    .line 556
    .local v9, "state":Ljava/lang/String;
    if-nez v9, :cond_83

    .line 557
    const-string v10, "DirEncryptServiceHelper"

    const-string/jumbo v11, "there is no SD card"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    goto/16 :goto_265

    .line 562
    :cond_83
    if-ne v5, v12, :cond_93

    .line 563
    const/4 v10, -0x1

    .line 564
    .local v10, "rc":I
    const-string v11, "DirEncryptServiceHelper"

    const-string v13, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput-boolean v12, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 568
    invoke-direct {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 569
    .end local v10    # "rc":I
    goto :goto_d6

    .line 570
    :cond_93
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v10

    if-ne v10, v12, :cond_ca

    .line 571
    const-string v10, "DirEncryptServiceHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ENC_META_CHECK : EAS Policy Set"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->isSupportBlockEncryption()Z

    move-result v10

    if-eqz v10, :cond_c6

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c6

    .line 573
    iget-object v10, v1, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolUsedSize(J)V

    .line 574
    :cond_c6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_d6

    .line 576
    :cond_ca
    const-string v10, "DirEncryptServiceHelper"

    const-string v11, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iput-boolean v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 580
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 585
    :goto_d6
    sput-boolean v14, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 586
    goto/16 :goto_265

    .line 542
    .end local v9    # "state":Ljava/lang/String;
    :pswitch_da
    const/4 v9, 0x7

    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 544
    invoke-direct {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 545
    if-nez v5, :cond_e3

    goto :goto_e4

    :cond_e3
    move v11, v13

    :goto_e4
    const-string/jumbo v9, "free"

    invoke-direct {v1, v11, v9}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 547
    goto/16 :goto_265

    .line 520
    :pswitch_ec
    move v9, v7

    .line 522
    .local v9, "needed":I
    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 523
    const/4 v12, 0x4

    iput v12, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 524
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v10, v5, v12}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 526
    invoke-direct {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 527
    if-nez v5, :cond_10c

    goto :goto_10d

    :cond_10c
    move v11, v13

    :goto_10d
    const-string/jumbo v10, "free"

    invoke-direct {v1, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 529
    goto/16 :goto_265

    .line 500
    .end local v9    # "needed":I
    :pswitch_115
    move v10, v7

    .line 501
    .local v10, "percentage":I
    move v12, v8

    .line 502
    .local v12, "storage":I
    const-string v14, "DirEncryptServiceHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DirEncryptServiceHelperVoldResponse.PROGRESS percentage("

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "), storage("

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v9, 0x1

    if-ne v5, v9, :cond_141

    .line 504
    invoke-direct {v1, v13}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_144

    .line 506
    :cond_141
    invoke-direct {v1, v11}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 508
    :goto_144
    iget v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    sub-int v9, v10, v9

    const/4 v14, 0x1

    if-lt v9, v14, :cond_162

    .line 509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x5

    invoke-direct {v1, v14, v5, v9}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 510
    iput v10, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 512
    :cond_162
    const/16 v9, 0x64

    if-ne v10, v9, :cond_169

    .line 513
    const/4 v9, -0x1

    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 515
    :cond_169
    if-nez v5, :cond_16c

    goto :goto_16d

    :cond_16c
    move v11, v13

    :goto_16d
    const-string v9, "busy"

    invoke-direct {v1, v11, v9, v10, v12}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    .line 517
    goto/16 :goto_265

    .line 441
    .end local v10    # "percentage":I
    .end local v12    # "storage":I
    :pswitch_174
    const-string/jumbo v9, "success"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1da

    .line 442
    const-string v9, "DirEncryptServiceHelper"

    const-string v10, "RESP_ENCRYPT success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 444
    invoke-direct {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 445
    const-string/jumbo v9, "success"

    invoke-direct {v1, v13, v5, v9}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 446
    if-nez v5, :cond_192

    .line 447
    goto :goto_193

    :cond_192
    move v11, v13

    :goto_193
    const-string v9, "Mount"

    .line 446
    invoke-direct {v1, v11, v9}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 451
    const-string v9, "DirEncryptServiceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENCRYPT Response admin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-nez v5, :cond_1c7

    .line 453
    const-string v9, "DirEncryptServiceHelper"

    const-string v10, "Decrypt compelte"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v9, ""

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_265

    .line 457
    :cond_1c7
    const-string v9, "DirEncryptServiceHelper"

    const-string v10, "Encrypt complete"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 459
    const-string v9, ""

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_265

    .line 461
    :cond_1da
    const-string v9, "exception"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23e

    .line 462
    const-string v9, "DirEncryptServiceHelper"

    const-string v10, "RESP_ENCRYPT : encrypted on other device"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v9, 0x8

    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 464
    invoke-direct {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 465
    const-string v9, "exception"

    invoke-direct {v1, v13, v5, v9}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 466
    if-nez v5, :cond_1f8

    .line 467
    goto :goto_1f9

    :cond_1f8
    move v11, v13

    :goto_1f9
    const-string v9, "Mount"

    .line 466
    invoke-direct {v1, v11, v9}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 471
    const-string v9, "DirEncryptServiceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENCRYPT Response admin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v5, :cond_22c

    .line 473
    const-string v9, "DirEncryptServiceHelper"

    const-string v10, "Decrypt compelte"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v9, ""

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_265

    .line 477
    :cond_22c
    const-string v9, "DirEncryptServiceHelper"

    const-string v10, "Encrypt complete"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 479
    const-string v9, ""

    iput-object v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_265

    .line 482
    :cond_23e
    const-string v9, "DirEncryptServiceHelper"

    const-string v12, "RESP_ENCRYPT failed"

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v9, :cond_252

    .line 484
    const/4 v9, 0x1

    if-ne v5, v9, :cond_250

    .line 485
    const/4 v9, 0x5

    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_252

    .line 487
    :cond_250
    iput v10, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 490
    :cond_252
    :goto_252
    const-string v9, "failed"

    invoke-direct {v1, v13, v5, v9}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 491
    invoke-direct {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 492
    if-nez v5, :cond_25d

    .line 493
    goto :goto_25e

    :cond_25d
    move v11, v13

    :goto_25e
    const-string/jumbo v9, "free"

    .line 492
    invoke-direct {v1, v11, v9}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 496
    nop

    .line 589
    .end local v0    # "path":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "description":Ljava/lang/String;
    .end local v7    # "arg1":I
    .end local v8    # "arg2":I
    :goto_265
    monitor-exit v4

    .line 590
    const/4 v0, 0x1

    return v0

    .line 589
    :catchall_268
    move-exception v0

    monitor-exit v4
    :try_end_26a
    .catchall {:try_start_9 .. :try_end_26a} :catchall_268

    throw v0

    nop

    :pswitch_data_26c
    .packed-switch 0x2ab
        :pswitch_174
        :pswitch_115
        :pswitch_50
        :pswitch_ec
        :pswitch_da
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_174
        :pswitch_6b
        :pswitch_52
    .end packed-switch
.end method

.method ready()V
    .registers 2

    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 381
    return-void
.end method

.method public registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/security/IDirEncryptServiceListener;

    .line 398
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 399
    return-void
.end method

.method public registerStorageEventListener()Z
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    const-string v1, "DirEncryptServiceHelper"

    if-nez v0, :cond_13

    .line 331
    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_13
    const-string v0, "RegisterStorageEventListner success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public setBootComplted(Z)V
    .registers 2
    .param p1, "in"    # Z

    .line 376
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 377
    return-void
.end method

.method public setExecParams(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 384
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 385
    return-void
.end method

.method public setMountSDcardToHelper(Z)V
    .registers 2
    .param p1, "in"    # Z

    .line 343
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 344
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .registers 2
    .param p1, "in"    # Z

    .line 339
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 340
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_5d

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD card  : State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / Admin policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / Encrypted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirEncryptServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v1

    if-nez v1, :cond_5d

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 659
    const-string v1, "Unmount SD Card By Admin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 666
    :try_start_53
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    .line 669
    goto :goto_5d

    .line 667
    :catch_59
    move-exception v1

    .line 668
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 672
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/security/IDirEncryptServiceListener;

    .line 402
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 403
    return-void
.end method
