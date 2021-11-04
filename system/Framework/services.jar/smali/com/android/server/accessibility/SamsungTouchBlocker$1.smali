.class Lcom/android/server/accessibility/SamsungTouchBlocker$1;
.super Landroid/os/Handler;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 103
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 106
    # getter for: Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungTouchBlocker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touch Blocker is deactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->access$102(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)Z

    .line 108
    return-void
.end method
