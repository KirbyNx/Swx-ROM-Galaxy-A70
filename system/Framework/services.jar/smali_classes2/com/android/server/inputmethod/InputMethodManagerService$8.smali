.class Lcom/android/server/inputmethod/InputMethodManagerService$8;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5907
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 5910
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 5911
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 5912
    .local v0, "positiveButton":Landroid/widget/Button;
    const v1, 0x3f99999a    # 1.2f

    .line 5913
    .local v1, "MAX_FONT_SCALE":F
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 5914
    .local v2, "fontScale":F
    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    .line 5916
    .local v3, "fontsize":F
    cmpl-float v4, v2, v1

    if-lez v4, :cond_38

    .line 5917
    move v2, v1

    .line 5919
    :cond_38
    const/4 v4, 0x1

    mul-float v5, v3, v2

    invoke-virtual {v0, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 5921
    .end local v0    # "positiveButton":Landroid/widget/Button;
    .end local v1    # "MAX_FONT_SCALE":F
    .end local v2    # "fontScale":F
    .end local v3    # "fontsize":F
    :cond_3e
    return-void
.end method
