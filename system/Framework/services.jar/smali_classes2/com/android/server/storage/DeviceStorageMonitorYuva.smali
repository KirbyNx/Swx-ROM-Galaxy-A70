.class public Lcom/android/server/storage/DeviceStorageMonitorYuva;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorYuva.java"


# static fields
.field private static final ACTION_CANCEL_USER_MEM_LOW:Ljava/lang/String; = "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

.field private static final ACTION_USER_MEM_LOW:Ljava/lang/String; = "com.samsung.android.sm.ACTION_USER_MEM_LOW"

.field private static final DATA_PATH:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorYuva"

.field private static final valueCscYuva:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private isBootCompleted:Z

.field private isSupported:Z

.field private final mContext:Landroid/content/Context;

.field private mLowUserMemFlag_15:Z

.field private mLowUserMemFlag_20:Z

.field private mMemLowUserThreshold_15:J

.field private mMemLowUserThreshold_20:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isBootCompleted:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    .line 37
    if-eqz v0, :cond_18

    const-string v0, "DeviceStorageMonitorYuva"

    const-string v1, "constructor is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_18
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    .line 39
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    .line 40
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    .line 42
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isYuvaSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    .line 43
    return-void
.end method

.method private getStorageUserMemLowBytes(I)J
    .registers 6
    .param p1, "threshold"    # I

    .line 46
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 47
    .local v0, "lowBytes":J
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user spcific threshold is calculated ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceStorageMonitorYuva"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_26
    return-wide v0
.end method

.method private intentBroadcastForUserLowMem(J)V
    .registers 8
    .param p1, "freeMem"    # J

    .line 117
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_63

    .line 118
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gez v0, :cond_1d

    .line 119
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-nez v0, :cond_63

    .line 120
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 121
    invoke-direct {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_63

    .line 123
    :cond_1d
    iget-wide v3, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    cmp-long v0, p1, v3

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-gez v0, :cond_45

    .line 124
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz v0, :cond_35

    .line 125
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 126
    invoke-direct {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 128
    :cond_35
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-nez v0, :cond_63

    .line 129
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 130
    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_63

    .line 133
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz v0, :cond_54

    .line 134
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 135
    invoke-direct {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 137
    :cond_54
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-eqz v0, :cond_63

    .line 138
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 139
    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 143
    :cond_63
    :goto_63
    return-void
.end method

.method private sendCancelUserMemLowNotification(I)V
    .registers 5
    .param p1, "percent"    # I

    .line 97
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent ACTION_CANCEL_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "userMemLowIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "PERCENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    const-string v1, "com.sec.android.autobackup"

    const-string v2, "com.sec.android.autobackup.UsbBackupReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method private sendUserMemLowNotification(I)V
    .registers 5
    .param p1, "percent"    # I

    .line 83
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent ACTION_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "userMemLowIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "PERCENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const-string v1, "com.sec.android.autobackup"

    const-string v2, "com.sec.android.autobackup.UsbBackupReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getMemLowUserThreshold_15()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    return-wide v0
.end method

.method public getMemLowUserThreshold_20()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    return-wide v0
.end method

.method public isLowUserMemFlag_15()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    return v0
.end method

.method public isLowUserMemFlag_20()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    return v0
.end method

.method public isYuvaSupported()Z
    .registers 4

    .line 73
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    const-string v1, "MemorySaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DeviceStorageMonitorYuva"

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    const-string/jumbo v2, "usbbackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_23

    .line 77
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "device does not support YUVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "device supports YUVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdate(J)V
    .registers 4
    .param p1, "freeMem"    # J

    .line 111
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_7

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->intentBroadcastForUserLowMem(J)V

    .line 114
    :cond_7
    return-void
.end method

.method public setLowUserMemFlag_15(Z)V
    .registers 2
    .param p1, "tempLowUserMemFlag"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 70
    return-void
.end method

.method public setLowUserMemFlag_20(Z)V
    .registers 2
    .param p1, "tempLowUserMemFlag"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 66
    return-void
.end method
