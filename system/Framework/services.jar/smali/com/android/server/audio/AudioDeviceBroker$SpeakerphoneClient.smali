.class Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeakerphoneClient"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private mForced:Z

.field private final mOn:Z

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;IZ)V
    .registers 5
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "on"    # Z

    .line 1429
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mForced:Z

    .line 1430
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    .line 1431
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mPid:I

    .line 1432
    iput-boolean p4, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mOn:Z

    .line 1433
    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    .param p1, "x1"    # Z

    .line 1422
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mForced:Z

    return p1
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 1456
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postSpeakerphoneClientDied(Ljava/lang/Object;)V

    .line 1457
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 1460
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getPid()I
    .registers 2

    .line 1464
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mPid:I

    return v0
.end method

.method isForced()Z
    .registers 2

    .line 1472
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mForced:Z

    return v0
.end method

.method isOn()Z
    .registers 2

    .line 1468
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mOn:Z

    return v0
.end method

.method public registerDeathRecipient()Z
    .registers 5

    .line 1436
    const/4 v0, 0x0

    .line 1438
    .local v0, "status":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 1439
    const/4 v0, 0x1

    .line 1442
    goto :goto_27

    .line 1440
    :catch_9
    move-exception v1

    .line 1441
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeakerphoneClient could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_27
    return v0
.end method

.method public unregisterDeathRecipient()V
    .registers 4

    .line 1448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1451
    goto :goto_f

    .line 1449
    :catch_7
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "SpeakerphoneClient could not not unregistered to binder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_f
    return-void
.end method
