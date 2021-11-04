.class Lcom/android/server/accessibility/SamsungMagnifierWindow$5;
.super Landroid/database/ContentObserver;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 1573
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1576
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    move v2, v1

    :cond_16
    move v0, v2

    .line 1578
    .local v0, "aodShowStateEnabled":Z
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAODStateContentObserver onChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    if-eqz v0, :cond_41

    .line 1582
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aodShowStateEnabled true: Magnifier Window is hided."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    goto :goto_66

    .line 1584
    :cond_41
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayState:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_66

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v2

    if-nez v2, :cond_66

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$400()Z

    move-result v2

    if-nez v2, :cond_66

    .line 1587
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aodShowStateEnabled false & Screen On :: Magnifier Window is showed."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 1590
    :cond_66
    :goto_66
    return-void
.end method
