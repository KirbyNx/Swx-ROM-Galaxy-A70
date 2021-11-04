.class Lcom/samsung/android/server/continuity/PreconditionObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "PreconditionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/PreconditionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 346
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 352
    return-void

    .line 357
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x304ed112

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_34

    const v3, 0x1f50b9c2

    if-eq v2, v3, :cond_2a

    const v3, 0x5c1076e2

    if-eq v2, v3, :cond_20

    :cond_1f
    goto :goto_3b

    :cond_20
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x0

    goto :goto_3b

    :cond_2a
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v1, v5

    goto :goto_3b

    :cond_34
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v1, v6

    :goto_3b
    const/16 v2, 0xf00

    const/16 v3, 0xf0

    const-string v7, "com.samsung.android.mcfds"

    const-string v8, "com.samsung.android.scloud"

    const-string v9, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v1, :cond_7f

    if-eq v1, v6, :cond_7f

    if-eq v1, v5, :cond_4d

    goto/16 :goto_bc

    .line 384
    :cond_4d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 385
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_54

    .line 386
    goto :goto_bc

    .line 389
    :cond_54
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 391
    const-string v2, "onReceive - Scloud is uninstalled"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->unsetFlag(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$400(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    goto :goto_79

    .line 393
    :cond_69
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 394
    const-string v3, "onReceive - Mcfds is uninstalled"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->unsetFlag(I)V
    invoke-static {v3, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$400(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    .line 399
    :goto_79
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged()V
    invoke-static {v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$300(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 400
    goto :goto_bc

    .line 360
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_7f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 361
    .restart local v1    # "uri":Landroid/net/Uri;
    if-nez v1, :cond_86

    .line 362
    goto :goto_bc

    .line 365
    :cond_86
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 367
    const-string v2, "onReceive - Scloud is installed"

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$100(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    goto :goto_ab

    .line 369
    :cond_9b
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 370
    const-string v3, "onReceive - Mcfds is installed"

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V
    invoke-static {v3, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$100(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    .line 376
    :goto_ab
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 377
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyReplacedPackage()V
    invoke-static {v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$200(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    goto :goto_bc

    .line 379
    :cond_b7
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged()V
    invoke-static {v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$300(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 405
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_bc
    :goto_bc
    return-void
.end method
