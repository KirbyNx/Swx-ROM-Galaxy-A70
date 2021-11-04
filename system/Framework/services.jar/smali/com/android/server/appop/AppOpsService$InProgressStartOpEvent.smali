.class final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field private mClientId:Landroid/os/IBinder;

.field private mOnDeath:Ljava/lang/Runnable;

.field private mStartElapsedTime:J

.field private mStartTime:J

.field private mUidState:I

.field numUnfinishedStarts:I


# direct methods
.method private constructor <init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V
    .registers 9
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "onDeath"    # Ljava/lang/Runnable;
    .param p7, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 730
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 731
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 732
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 733
    iput p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 735
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 736
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;ILcom/android/server/appop/AppOpsService$1;)V
    .registers 9
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Landroid/os/IBinder;
    .param p6, "x3"    # Ljava/lang/Runnable;
    .param p7, "x4"    # I
    .param p8, "x5"    # Lcom/android/server/appop/AppOpsService$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 696
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 749
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 750
    return-void
.end method

.method public finish()V
    .registers 4

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 744
    goto :goto_1e

    .line 742
    :catch_7
    move-exception v0

    .line 743
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSuchElementException calling unlinkToDeath(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_1e
    return-void
.end method

.method public getClientId()Landroid/os/IBinder;
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object v0
.end method

.method public getStartElapsedTime()J
    .registers 3

    .line 781
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 776
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .registers 2

    .line 791
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V
    .registers 9
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "onDeath"    # Ljava/lang/Runnable;
    .param p7, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 766
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 767
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 768
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 769
    iput p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 771
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 772
    return-void
.end method
