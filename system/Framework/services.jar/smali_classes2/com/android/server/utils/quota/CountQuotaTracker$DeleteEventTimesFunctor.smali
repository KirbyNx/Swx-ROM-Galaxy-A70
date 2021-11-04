.class final Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;
.super Ljava/lang/Object;
.source "CountQuotaTracker.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/CountQuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteEventTimesFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/util/LongArrayQueue;",
        ">;"
    }
.end annotation


# instance fields
.field private mMaxPeriodMs:J

.field final synthetic this$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/CountQuotaTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/utils/quota/CountQuotaTracker;
    .param p2, "x1"    # Lcom/android/server/utils/quota/CountQuotaTracker$1;

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 616
    invoke-direct {p0}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->updateMaxPeriod()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 616
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    return-wide v0
.end method

.method private updateMaxPeriod()V
    .registers 6

    .line 631
    const-wide/16 v0, 0x0

    .line 632
    .local v0, "maxPeriodMs":J
    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    # getter for: Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->access$300(Lcom/android/server/utils/quota/CountQuotaTracker;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_27

    .line 633
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    # getter for: Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->access$300(Lcom/android/server/utils/quota/CountQuotaTracker;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    .line 632
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 635
    .end local v2    # "i":I
    :cond_27
    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    .line 636
    return-void
.end method


# virtual methods
.method public accept(Landroid/util/LongArrayQueue;)V
    .registers 8
    .param p1, "times"    # Landroid/util/LongArrayQueue;

    .line 621
    if-eqz p1, :cond_1f

    .line 623
    :goto_2
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 624
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1f

    .line 625
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_2

    .line 628
    :cond_1f
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 616
    check-cast p1, Landroid/util/LongArrayQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->accept(Landroid/util/LongArrayQueue;)V

    return-void
.end method
