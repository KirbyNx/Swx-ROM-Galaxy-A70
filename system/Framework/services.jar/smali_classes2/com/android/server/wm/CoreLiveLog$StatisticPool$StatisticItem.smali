.class public Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;
.super Ljava/lang/Object;
.source "CoreLiveLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CoreLiveLog$StatisticPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatisticItem"
.end annotation


# instance fields
.field mAverage:D

.field mCount:I

.field mInterval:I

.field mRawData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mStdev:D

.field mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "interval"    # I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    .line 178
    iput-object p1, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mTag:Ljava/lang/String;

    .line 179
    iput p2, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mInterval:I

    .line 180
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    .line 169
    invoke-direct {p0}, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->calculate()V

    return-void
.end method

.method private calculate()V
    .registers 14

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 206
    .local v3, "i":J
    # getter for: Lcom/android/server/wm/CoreLiveLog;->sDebug:Z
    invoke-static {}, Lcom/android/server/wm/CoreLiveLog;->access$100()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "val:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CoreLiveLog"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_35
    add-long/2addr v0, v3

    .line 210
    .end local v3    # "i":J
    goto :goto_8

    .line 211
    :cond_37
    long-to-double v2, v0

    iget-object v4, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mAverage:D

    .line 212
    const-wide/16 v2, 0x0

    .line 213
    .local v2, "temp":D
    iget-object v4, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 214
    .local v5, "i":J
    long-to-double v7, v5

    iget-wide v9, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mAverage:D

    sub-double/2addr v7, v9

    long-to-double v11, v5

    sub-double/2addr v11, v9

    mul-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 215
    .end local v5    # "i":J
    goto :goto_4a

    .line 216
    :cond_67
    iget-object v4, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mStdev:D

    .line 217
    return-void
.end method


# virtual methods
.method public rawString()Ljava/lang/String;
    .registers 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "> :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 200
    .end local v1    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 184
    # getter for: Lcom/android/server/wm/CoreLiveLog;->sDebug:Z
    invoke-static {}, Lcom/android/server/wm/CoreLiveLog;->access$100()Z

    move-result v0

    const-string v1, " C:"

    const-string v2, " S: "

    const-string v3, " A:"

    const-string v4, "\n I: "

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "%.4f"

    if-eqz v0, :cond_5d

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mInterval:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v6, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mAverage:D

    .line 186
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v6, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mStdev:D

    .line 188
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mCount:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v8, "CoreLiveLog"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mInterval:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mAverage:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mStdev:D

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    return-object v0
.end method
