.class Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->sortMemItems(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ActivityManagerService$MemItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pss:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .line 15785
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$26;->val$pss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I
    .registers 8
    .param p1, "lhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;
    .param p2, "rhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 15788
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$pss:Z

    if-eqz v0, :cond_7

    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_9

    :cond_7
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 15789
    .local v0, "lss":J
    :goto_9
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$pss:Z

    if-eqz v2, :cond_10

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_12

    :cond_10
    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 15790
    .local v2, "rss":J
    :goto_12
    cmp-long v4, v0, v2

    if-gez v4, :cond_18

    .line 15791
    const/4 v4, 0x1

    return v4

    .line 15792
    :cond_18
    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 15793
    const/4 v4, -0x1

    return v4

    .line 15795
    :cond_1e
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 15785
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$26;->compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I

    move-result p1

    return p1
.end method
