.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mIsPrivileged:Z

.field private mMode:I

.field private final mPackage:Ljava/lang/String;

.field private mPackageType:Ljava/lang/String;

.field private final mPid:I

.field private mSkipCheckCapturingOrPlaying:Z

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;IIZLjava/lang/String;)V
    .registers 8
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "isPrivileged"    # Z
    .param p6, "caller"    # Ljava/lang/String;

    .line 4131
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4129
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 4185
    const-string v0, "NORMAL"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageType:Ljava/lang/String;

    .line 4186
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mSkipCheckCapturingOrPlaying:Z

    .line 4132
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 4133
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 4134
    iput p4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 4135
    iput-boolean p5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    .line 4136
    iput-object p6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 4137
    return-void
.end method

.method static synthetic access$13100(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4123
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4123
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4123
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mSkipCheckCapturingOrPlaying:Z

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 11

    .line 4140
    const/4 v0, 0x0

    .line 4141
    .local v0, "newModeOwnerPid":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4142
    :try_start_a
    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "setMode() client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4144
    .local v2, "index":I
    if-gez v2, :cond_25

    .line 4145
    const-string v3, "AS.AudioService"

    const-string/jumbo v4, "unregistered setMode() client died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 4147
    :cond_25
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    iget v7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    const-string v9, "AS.AudioService"

    # invokes: Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;IIZLjava/lang/String;)I
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;IIZLjava/lang/String;)I

    move-result v3

    move v0, v3

    .line 4150
    .end local v2    # "index":I
    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_48

    .line 4153
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetModeOwnerPid(II)V

    .line 4154
    return-void

    .line 4150
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 4169
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 4165
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 4177
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageType()Ljava/lang/String;
    .registers 2

    .line 4199
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 4157
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 4173
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 4181
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 4161
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 4162
    return-void
.end method

.method public setPackageType(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 4190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4191
    const-string v0, "GAMEVOIP"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageType:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_18} :catch_19

    .line 4195
    :cond_18
    goto :goto_22

    .line 4193
    :catch_19
    move-exception v0

    .line 4194
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "setPackageType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4196
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_22
    return-void
.end method
