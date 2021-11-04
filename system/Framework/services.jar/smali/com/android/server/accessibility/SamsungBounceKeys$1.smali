.class Lcom/android/server/accessibility/SamsungBounceKeys$1;
.super Landroid/os/Handler;
.source "SamsungBounceKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungBounceKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungBounceKeys;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungBounceKeys;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 27
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$1;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 30
    # getter for: Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungBounceKeys;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touch Blocker is deactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$1;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungBounceKeys;->access$102(Lcom/android/server/accessibility/SamsungBounceKeys;Z)Z

    .line 32
    return-void
.end method
