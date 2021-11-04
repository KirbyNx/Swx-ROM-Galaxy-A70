.class final Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastCompactionStats"
.end annotation


# instance fields
.field private final mRssAfterCompaction:[J


# direct methods
.method constructor <init>([J)V
    .registers 2
    .param p1, "rss"    # [J

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->mRssAfterCompaction:[J

    .line 946
    return-void
.end method


# virtual methods
.method getRssAfterCompaction()[J
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->mRssAfterCompaction:[J

    return-object v0
.end method
