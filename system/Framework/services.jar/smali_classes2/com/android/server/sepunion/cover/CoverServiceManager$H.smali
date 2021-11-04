.class final Lcom/android/server/sepunion/cover/CoverServiceManager$H;
.super Landroid/os/Handler;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_RECONNECT_SERVICE:I = 0x2

.field static final MSG_UPDATE_COVER_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 897
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 898
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 899
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 903
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_29

    .line 908
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 909
    .local v0, "info":Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # getter for: Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1400(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    # getter for: Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v3

    # getter for: Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$2300(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/os/UserHandle;

    move-result-object v4

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$2400(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    goto :goto_29

    .line 905
    .end local v0    # "info":Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
    :cond_1f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$2200(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V

    .line 906
    nop

    .line 912
    :goto_29
    return-void
.end method
