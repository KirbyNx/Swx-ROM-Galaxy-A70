.class Lcom/samsung/android/server/continuity/PreconditionObserver$4;
.super Ljava/lang/Object;
.source "PreconditionObserver.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


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

    .line 458
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 7
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountsUpdated - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    array-length v0, p1

    const/4 v3, 0x0

    if-lez v0, :cond_1e

    aget-object v0, p1, v3

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 464
    .local v0, "nextAccount":Landroid/accounts/Account;
    :goto_1f
    if-eqz v0, :cond_3b

    sget-boolean v4, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v4, :cond_3b

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # getter for: Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$500(Lcom/samsung/android/server/continuity/PreconditionObserver;)Landroid/accounts/Account;

    move-result-object v1

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->isChangedAccount(Landroid/accounts/Account;Landroid/accounts/Account;)Z
    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$600(Landroid/accounts/Account;Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 468
    const-string v1, "onAccountsUpdated - is not changed"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 472
    :cond_4d
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # setter for: Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;
    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$502(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 473
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # getter for: Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$500(Lcom/samsung/android/server/continuity/PreconditionObserver;)Landroid/accounts/Account;

    move-result-object v1

    const/16 v2, 0xf

    if-eqz v1, :cond_6e

    .line 474
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isLsiBtChipset()Z

    move-result v1

    if-nez v1, :cond_68

    .line 475
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$700(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    .line 477
    :cond_68
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$100(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    goto :goto_78

    .line 479
    :cond_6e
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$700(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    .line 480
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->unsetFlag(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$400(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V

    .line 482
    :goto_78
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged()V
    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$300(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 483
    return-void
.end method
