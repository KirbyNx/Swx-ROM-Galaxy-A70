.class Lcom/android/server/sepunion/SemShortcutManagerService$1;
.super Ljava/lang/Object;
.source "SemShortcutManagerService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 184
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 188
    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_5
    const-string v1, "SemExecuteManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShortcutChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$200(Lcom/android/server/sepunion/SemShortcutManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 191
    .local v1, "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz v1, :cond_8f

    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 193
    .local v2, "N":I
    const-string v3, "SemExecuteManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onShortcutChanged: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4d
    if-ge v3, v2, :cond_8f

    .line 195
    iget-object v4, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # invokes: Lcom/android/server/sepunion/SemShortcutManagerService;->makeIntent(Ljava/lang/String;I)Landroid/content/Intent;
    invoke-static {v4, p1, p2}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$300(Lcom/android/server/sepunion/SemShortcutManagerService;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 196
    .local v4, "fillIn":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 197
    .local v5, "callbackIntent":Landroid/app/PendingIntent;
    const-string v6, "SemExecuteManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onShortcutChanged: send callback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_91

    .line 199
    :try_start_7d
    iget-object v6, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$400(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_87
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7d .. :try_end_87} :catch_88
    .catchall {:try_start_7d .. :try_end_87} :catchall_91

    .line 202
    goto :goto_8c

    .line 200
    :catch_88
    move-exception v6

    .line 201
    .local v6, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_89
    invoke-virtual {v6}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 194
    .end local v4    # "fillIn":Landroid/content/Intent;
    .end local v5    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v6    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 205
    .end local v1    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_8f
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_91

    throw v1
.end method
