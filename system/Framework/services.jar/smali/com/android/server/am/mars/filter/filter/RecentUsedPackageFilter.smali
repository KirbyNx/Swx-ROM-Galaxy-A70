.class public Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
.super Ljava/lang/Object;
.source "RecentUsedPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private RogueApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mUnUsedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    .line 18
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.codoon.gps"

    const-string v2, "com.traffic.panda"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$1;

    .line 15
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
    .registers 1

    .line 28
    # getter for: Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    move-result-object v0

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 44
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 47
    const/4 v0, 0x4

    if-ne p4, v0, :cond_9

    .line 48
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    goto :goto_26

    .line 49
    :cond_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 50
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    goto :goto_26

    .line 52
    :cond_21
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    .line 55
    :goto_26
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide v0

    .line 56
    .local v0, "lastUsedTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_3d

    move v2, v3

    goto :goto_3e

    :cond_3d
    move v2, v4

    .line 57
    .local v2, "isUnusedAppTimeExpired":Z
    :goto_3e
    if-nez v2, :cond_7e

    .line 58
    sget-object v4, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " not Expired! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v3

    .line 62
    :cond_7e
    return v4
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->setContext(Landroid/content/Context;)V

    .line 41
    return-void
.end method
