.class abstract Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PageboostAppSelectionPolicy"
.end annotation


# instance fields
.field final mLock:Ljava/lang/Object;

.field mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field mRecentPrefetchStrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 955
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 956
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Pageboost$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/Pageboost$1;

    .line 953
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
.end method

.method finalizePredict()V
    .registers 3

    .line 960
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 962
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 963
    monitor-exit v0

    .line 964
    return-void

    .line 963
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method abstract judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
.end method
