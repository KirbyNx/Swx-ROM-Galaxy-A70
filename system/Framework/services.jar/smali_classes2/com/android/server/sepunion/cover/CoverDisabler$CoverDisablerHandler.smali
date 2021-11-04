.class final Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;
.super Landroid/os/Handler;
.source "CoverDisabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverDisablerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverDisabler;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 69
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 70
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverDisabler$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/sepunion/cover/CoverDisabler;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/sepunion/cover/CoverDisabler$1;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_11

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    # invokes: Lcom/android/server/sepunion/cover/CoverDisabler;->handleDisableCoverManagerLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/sepunion/cover/CoverDisabler;->access$100(Lcom/android/server/sepunion/cover/CoverDisabler;Z)V

    .line 80
    :goto_11
    return-void
.end method
