.class public Lcom/android/server/am/FastTrackPolicyManager;
.super Ljava/lang/Object;
.source "FastTrackPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FastTrackPolicyManager$FttHandler;
    }
.end annotation


# static fields
.field public static final MSG_SET_FTT_STATE:I = 0x2711

.field static final TAG:Ljava/lang/String; = "FastTrack"

.field private static final fttSol_Disable:Ljava/lang/String; = "BROADCAST_FTT_SOLUTION_DISABLE"

.field private static final fttSol_Enable:Ljava/lang/String; = "BROADCAST_FTT_SOLUTION_ENABLE"


# instance fields
.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mCtx:Landroid/content/Context;

.field private final mFttHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FastTrackPolicyManager;->mCtx:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/server/am/FastTrackPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 35
    iput-object p1, p0, Lcom/android/server/am/FastTrackPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 36
    iput-object p2, p0, Lcom/android/server/am/FastTrackPolicyManager;->mCtx:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FTT"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "FttThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Lcom/android/server/am/FastTrackPolicyManager$FttHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/FastTrackPolicyManager$FttHandler;-><init>(Lcom/android/server/am/FastTrackPolicyManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/FastTrackPolicyManager;->mFttHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public setFastTrackState(JJLjava/lang/String;)V
    .registers 11
    .param p1, "pid"    # J
    .param p3, "tid"    # J
    .param p5, "value"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFastTrackState: pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ;tid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ;value= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/task/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/static_ftt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "FILE_PATH":Ljava/lang/String;
    :try_start_45
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-virtual {v2, p5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_50} :catch_51

    .line 79
    goto :goto_72

    .line 77
    .end local v2    # "fw":Ljava/io/FileWriter;
    :catch_51
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :goto_72
    return-void
.end method

.method public updateFttState(IILjava/lang/String;)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "sys.config.ftt"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 44
    iget-object v0, p0, Lcom/android/server/am/FastTrackPolicyManager;->mFttHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 45
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 46
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 47
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/android/server/am/FastTrackPolicyManager;->mFttHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1d
    return-void
.end method
