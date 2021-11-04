.class Lcom/android/server/accessibility/SamsungMagnifierWindow$1;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 264
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 267
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 12
    .param p1, "displayId"    # I

    .line 275
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 276
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 277
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_e0

    .line 278
    const/4 v1, 0x1

    .line 279
    .local v1, "isSameDisplayName":Z
    const/4 v2, 0x1

    .line 280
    .local v2, "isSameDefaultDisplayName":Z
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v3

    .line 281
    .local v3, "displayState":I
    const-string v4, ""

    .line 282
    .local v4, "defaultDisplayName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayState:I
    invoke-static {v5, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$102(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)I

    .line 285
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 286
    .local v5, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 287
    .local v6, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 289
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 298
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v7, :cond_6a

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 299
    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v7

    if-nez v7, :cond_6a

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$400()Z

    move-result v7

    if-nez v7, :cond_6a

    .line 300
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Screen On :: Magnifier Window is showed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    goto/16 :goto_e0

    .line 302
    :cond_6a
    if-ne v3, v8, :cond_85

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v7

    if-eqz v7, :cond_85

    if-eqz v1, :cond_85

    .line 303
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Screen Off :: Magnifier Window is hided."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V
    invoke-static {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    goto :goto_e0

    .line 306
    :cond_85
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v7

    if-eqz v7, :cond_a5

    if-eqz v1, :cond_a5

    if-nez v2, :cond_a5

    .line 308
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Screen On :: Magnifier Window is hided & showed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V
    invoke-static {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    .line 310
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged(Z)V
    invoke-static {v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    goto :goto_d1

    .line 311
    :cond_a5
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$400()Z

    move-result v7

    if-eqz v7, :cond_c7

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v7

    if-nez v7, :cond_c7

    if-eqz v1, :cond_c7

    if-nez v2, :cond_c7

    .line 313
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "onDisplayChanged - Magnifier Window re-config & hide."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged(Z)V
    invoke-static {v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    goto :goto_d1

    .line 316
    :cond_c7
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "onDisplayChanged - Nothing to do"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_d1
    if-nez v2, :cond_e0

    .line 319
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "onDisplayChanged - !isSameDefaultDisplayName"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "isSameDisplayName":Z
    .end local v2    # "isSameDefaultDisplayName":Z
    .end local v3    # "displayState":I
    .end local v4    # "defaultDisplayName":Ljava/lang/String;
    .end local v5    # "windowmanager":Landroid/view/WindowManager;
    .end local v6    # "defaultDisplay":Landroid/view/Display;
    :cond_e0
    :goto_e0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 271
    return-void
.end method
