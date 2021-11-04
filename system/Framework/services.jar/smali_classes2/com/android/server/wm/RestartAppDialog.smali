.class final Lcom/android/server/wm/RestartAppDialog;
.super Landroid/app/AlertDialog;
.source "RestartAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RestartAppDialog"


# instance fields
.field private final mAppLabel:Ljava/lang/CharSequence;

.field private mDialogMessage:Landroid/widget/TextView;

.field private final mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

.field private final mPackageName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "taskId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appLabel"    # Ljava/lang/CharSequence;

    .line 47
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/android/server/wm/RestartAppDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RestartAppDialog$1;-><init>(Lcom/android/server/wm/RestartAppDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/RestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/RestartAppDialog;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    iput p3, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    .line 52
    iput-object p4, p0, Lcom/android/server/wm/RestartAppDialog;->mPackageName:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/android/server/wm/RestartAppDialog;->mAppLabel:Ljava/lang/CharSequence;

    .line 55
    const v0, 0x104049e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    iget-object v3, p0, Lcom/android/server/wm/RestartAppDialog;->mAppLabel:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move-object v3, v4

    :goto_27
    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 55
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RestartAppDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RestartAppDialog;->setCancelable(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 62
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x1090080

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "contentView":Landroid/view/View;
    const v6, 0x104049d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    iget-object v7, p0, Lcom/android/server/wm/RestartAppDialog;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_57

    move-object v4, v7

    :cond_57
    aput-object v4, v1, v5

    .line 64
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "message":Ljava/lang/String;
    const v4, 0x10202f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/wm/RestartAppDialog;->mDialogMessage:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v4, 0x10202f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/server/wm/RestartAppDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RestartAppDialog;->setView(Landroid/view/View;)V

    .line 71
    const/4 v4, -0x1

    const v5, 0x10403c6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/android/server/wm/RestartAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const/4 v4, -0x2

    const/high16 v5, 0x1040000

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/android/server/wm/RestartAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 75
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const/16 v5, 0x7d3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 77
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 78
    const/16 v5, 0x51

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 79
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 107
    const/4 v0, -0x2

    const-string v1, "RestartAppDialog"

    if-eq p2, v0, :cond_4e

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    goto :goto_6b

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/RestartAppDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 110
    .local v0, "isChecked":Z
    if-eqz v0, :cond_25

    .line 111
    iget-object v2, p0, Lcom/android/server/wm/RestartAppDialog;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "foldable_restart_dialog_do_not_show_again"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v2, p0, Lcom/android/server/wm/RestartAppDialog;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput v4, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mIsDoNotShowAgainCheckedForRestartAppDialog:I

    .line 115
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick: BUTTON_POSITIVE (tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Do_not_show_again="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/RestartAppDialog;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget v2, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->restartTask(I)V

    .line 118
    goto :goto_6b

    .line 120
    .end local v0    # "isChecked":Z
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: BUTTON_NEGATIVE (tid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    nop

    .line 125
    :goto_6b
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 95
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 101
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method
