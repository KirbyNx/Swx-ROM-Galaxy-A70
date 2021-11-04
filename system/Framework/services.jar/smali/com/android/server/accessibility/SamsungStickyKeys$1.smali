.class Lcom/android/server/accessibility/SamsungStickyKeys$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungStickyKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungStickyKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungStickyKeys;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 69
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungStickyKeys"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # invokes: Lcom/android/server/accessibility/SamsungStickyKeys;->isHardwareKeyboardAvailable()Z
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$000(Lcom/android/server/accessibility/SamsungStickyKeys;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 75
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$102(Lcom/android/server/accessibility/SamsungStickyKeys;I)I

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    const/4 v2, 0x4

    if-ge v0, v2, :cond_35

    .line 77
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # invokes: Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$200(Lcom/android/server/accessibility/SamsungStickyKeys;II)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 80
    .end local v0    # "i":I
    :cond_35
    return-void
.end method
