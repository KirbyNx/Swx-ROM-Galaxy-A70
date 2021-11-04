.class final Lcom/android/server/am/Pageboost$VramdiskMlockManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskMlockManager"
.end annotation


# instance fields
.field mFiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    .line 645
    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p1, "files":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    .line 647
    iput-object p1, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    .line 648
    return-void
.end method


# virtual methods
.method public hasPinnedFile()Z
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mlockAllFiles()V
    .registers 7

    .line 655
    iget-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    if-nez v0, :cond_5

    .line 656
    return-void

    .line 659
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 660
    .local v1, "file":Ljava/lang/String;
    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/PinnerService;->doPinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v2

    .line 661
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    if-eqz v2, :cond_3d

    .line 662
    iget-object v3, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "successfully pinned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    :cond_3d
    goto :goto_9

    .line 666
    :cond_3e
    return-void
.end method

.method public munlockAllFiles()V
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    .line 670
    .local v1, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    invoke-virtual {v1}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .end local v1    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_6

    .line 671
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 672
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "munlockAllFiles() done"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void
.end method
