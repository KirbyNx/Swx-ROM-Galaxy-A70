.class public Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "registerAppHotKeyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5310
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5311
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 5314
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6300(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 5315
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "start registerHotKeyApp."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 5319
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 5320
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 5321
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 5322
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5323
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 5324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not register hot key. packageName is empty. componentName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5326
    return-void

    .line 5331
    :cond_40
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5332
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 5333
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 5335
    .local v6, "toastString":Ljava/lang/String;
    :try_start_4a
    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v5, v7

    .line 5338
    goto :goto_54

    .line 5336
    :catch_50
    move-exception v7

    .line 5337
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 5340
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_54
    if-eqz v5, :cond_b6

    .line 5341
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 5342
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 5343
    .local v7, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->isMatchWithLauncherApps(Ljava/lang/String;)Z
    invoke-static {v8, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6400(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    if-eqz v7, :cond_a1

    .line 5345
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPressedHotKey:I
    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6500(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v8

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/android/server/policy/KeyCustomizeManager;->putHotKey(ILandroid/content/ComponentName;)V

    .line 5352
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const v8, 0x104051d

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 5354
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 5352
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5355
    .end local v6    # "toastString":Ljava/lang/String;
    .local v0, "toastString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v6, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b6

    .line 5347
    .end local v0    # "toastString":Ljava/lang/String;
    .restart local v6    # "toastString":Ljava/lang/String;
    :cond_a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not register hot key. packageName="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    return-void

    .line 5358
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "toastString":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_b6
    :goto_b6
    return-void
.end method
