.class public Lcom/android/server/ibs/dnba/NetSpeedPolicy2;
.super Ljava/lang/Object;
.source "NetSpeedPolicy2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;
    }
.end annotation


# static fields
.field private static final DETECT_APP_BANDWIDTH_TIME_MS:I = 0x7d0

.field public static final MSG_APP_FGBG_CHANGED:I = 0x3e

.field public static final MSG_ROMEVE_UNUSE_NETWORK_APP:I = 0x40

.field public static final MSG_USER_LIMIT_BG_SPEED:I = 0x3d

.field private static TAG:Ljava/lang/String;


# instance fields
.field public isSetRule:Z

.field private mBGUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBGUidListTraf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mControlLimitSpeed:I

.field private mFgUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

.field private mLimitAllSpeedQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

.field private mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

.field private mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

.field public mWhiteUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wifiConnect:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-string v0, "NetSpeedPolicy2"

    sput-object v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedMonitor;Landroid/os/HandlerThread;Lcom/android/server/ibs/dnba/NetSpeedAction;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nsm"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .param p3, "ht"    # Landroid/os/HandlerThread;
    .param p4, "nsa"    # Lcom/android/server/ibs/dnba/NetSpeedAction;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 52
    iput-object p4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    .line 53
    iget-object v0, p2, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mFgUidList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidListTraf:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    .line 61
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;-><init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/dnba/NetSpeedPolicy2;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    .line 20
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->updateFGBGUidList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy2;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    .line 20
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->updateBGUseNetUidList()V

    return-void
.end method

.method private updateBGUseNetUidList()V
    .registers 7

    .line 187
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidListTraf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    .line 188
    :cond_f
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidListTraf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_64

    .line 189
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 190
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidListTraf:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gez v2, :cond_61

    .line 191
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 192
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    .line 193
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    :cond_5c
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    .end local v1    # "uid":I
    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 198
    .end local v0    # "i":I
    :cond_64
    return-void
.end method

.method private updateBgUidListTraf()V
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidListTraf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 180
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidListTraf:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v3, v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v1    # "uid":I
    goto :goto_b

    .line 182
    :cond_2b
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->removeMessages(I)V

    .line 183
    :cond_3a
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    return-void
.end method

.method private updateFGBGUidList()V
    .registers 7

    .line 140
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "mFgUidTmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mFgUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_67

    .line 142
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mFgUidList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 143
    .local v3, "uid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 144
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 145
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->isSetRule:Z

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 147
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    .line 148
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_5f
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mFgUidList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    .end local v3    # "uid":I
    :cond_64
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 155
    .end local v1    # "i":I
    :cond_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_6c
    if-ltz v1, :cond_e2

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 157
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mFgUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_ac

    .line 158
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mFgUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-boolean v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->isSetRule:Z

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 160
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    .line 161
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_ac
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 165
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-boolean v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->isSetRule:Z

    if-eqz v3, :cond_df

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 167
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    .line 168
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    .end local v2    # "uid":I
    :cond_df
    add-int/lit8 v1, v1, -0x1

    goto :goto_6c

    .line 172
    .end local v1    # "i":I
    :cond_e2
    iget-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->isSetRule:Z

    if-nez v1, :cond_ed

    iget-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->wifiConnect:Z

    if-eqz v1, :cond_ed

    .line 173
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->updateBgUidListTraf()V

    .line 175
    :cond_ed
    return-void
.end method


# virtual methods
.method public limitAllBgSpeed(IZ)V
    .registers 9
    .param p1, "speed"    # I
    .param p2, "allow"    # Z

    .line 94
    if-gtz p1, :cond_3

    return-void

    .line 95
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_66

    .line 96
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 98
    .local v2, "targetSpeed":I
    iget v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    if-nez v3, :cond_56

    .line 99
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_29

    return-void

    .line 100
    :cond_29
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setDropRule(IZ)Z

    .line 101
    iput v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    .line 102
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mBGUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 103
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    .line 104
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "uid":I
    goto :goto_36

    :cond_55
    goto :goto_64

    .line 107
    :cond_56
    if-eq v2, v3, :cond_64

    .line 108
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setDropRule(IZ)Z

    .line 109
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setDropRule(IZ)Z

    .line 110
    iput v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    .line 113
    .end local v2    # "targetSpeed":I
    :cond_64
    :goto_64
    goto/16 :goto_ed

    .line 114
    :cond_66
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 115
    sget-object v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cancel speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not in limited list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_8e
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_d1

    .line 120
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->onPolicy2Deactive()V

    .line 121
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setDropRule(IZ)Z

    .line 122
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    .line 124
    .end local v2    # "uid":I
    goto :goto_b1

    .line 125
    :cond_c7
    iput v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    .line 126
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iput-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->isSetRule:Z

    goto :goto_ed

    .line 129
    :cond_d1
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    .local v2, "targetSpeed":I
    iget v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    if-eq v2, v3, :cond_ed

    .line 131
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setDropRule(IZ)Z

    .line 132
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setDropRule(IZ)Z

    .line 133
    iput v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mControlLimitSpeed:I

    .line 137
    .end local v2    # "targetSpeed":I
    :cond_ed
    :goto_ed
    return-void
.end method

.method public onFGBGChanged()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method

.method public onVPNConnectionChanged(Z)V
    .registers 2
    .param p1, "cur"    # Z

    .line 238
    return-void
.end method

.method public onWhiteListChange()V
    .registers 7

    .line 201
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_32

    .line 202
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->getWhiteUidList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 204
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 205
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setReturnRule(IZ)Z

    .line 207
    .end local v2    # "uid":I
    :cond_30
    goto :goto_15

    :cond_31
    goto :goto_8d

    .line 209
    :cond_32
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->getWhiteUidList()Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "tempWhiteUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 211
    .local v3, "uid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 212
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setReturnRule(IZ)Z

    .line 214
    .end local v3    # "uid":I
    :cond_5e
    goto :goto_3e

    .line 215
    :cond_5f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 216
    .restart local v3    # "uid":I
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 217
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 218
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setReturnRule(IZ)Z

    .line 221
    .end local v3    # "uid":I
    :cond_8a
    goto :goto_63

    .line 222
    :cond_8b
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    .line 224
    .end local v0    # "tempWhiteUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_8d
    return-void
.end method

.method public onWifiConnectionChanged(Z)V
    .registers 2
    .param p1, "cur"    # Z

    .line 233
    iput-boolean p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->wifiConnect:Z

    .line 234
    return-void
.end method
