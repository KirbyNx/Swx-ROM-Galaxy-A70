.class Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->addSettingButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    .line 6058
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 6060
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.honeyboard"

    const-string v2, "com.samsung.android.honeyboard.settings.common.HoneyBoardSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6062
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6063
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6064
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6065
    const v2, 0x34008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6069
    const-string/jumbo v2, "switcher_setting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6070
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mUserId:I
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6072
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6073
    .local v2, "closeMenuIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mUserId:I
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6074
    return-void
.end method
