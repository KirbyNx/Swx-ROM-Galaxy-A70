.class Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;
.super Landroid/os/Handler;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverTestModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 31
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 33
    # getter for: Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->access$000()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 34
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    # getter for: Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->access$100(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    move-result-object v0

    # getter for: Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->access$000()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 36
    :cond_15
    return-void
.end method
