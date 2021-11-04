.class final Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastNandswapStats"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mRssAfterNandswap:[J


# direct methods
.method constructor <init>(Ljava/lang/String;[J)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rss"    # [J

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->mName:Ljava/lang/String;

    .line 959
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->mRssAfterNandswap:[J

    .line 960
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .line 967
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getRssAfterNandswap()[J
    .registers 2

    .line 963
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->mRssAfterNandswap:[J

    return-object v0
.end method
