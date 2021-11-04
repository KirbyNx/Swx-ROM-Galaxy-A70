.class Lcom/android/server/GmsAlarmManager$NetWorkStats;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
    }
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:J

.field final mLock:Ljava/lang/Object;

.field private mTime:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1172
    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 1174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GmsAlarmManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/GmsAlarmManager$1;

    .line 1170
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager$NetWorkStats;

    .line 1170
    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager$NetWorkStats;

    .line 1170
    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    return-wide v0
.end method


# virtual methods
.method public addStartTime(J)V
    .registers 9
    .param p1, "time"    # J

    .line 1187
    new-instance v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    .line 1188
    .local v0, "netWorkData":Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
    iput-wide p1, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 1189
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1190
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    .line 1191
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    monitor-exit v1

    .line 1193
    return-void

    .line 1192
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public dump(J)Ljava/lang/String;
    .registers 18
    .param p1, "now"    # J

    .line 1219
    move-object v1, p0

    const-wide/16 v2, 0x0

    .line 1220
    .local v2, "totalTime":J
    const-wide/32 v4, 0x5265c00

    sub-long v4, p1, v4

    .line 1221
    .local v4, "lastTime":J
    const/4 v6, 0x0

    .line 1222
    .local v6, "result":Ljava/lang/String;
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1223
    iget-object v9, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1224
    cmp-long v0, v4, v7

    if-gtz v0, :cond_7a

    .line 1225
    :try_start_14
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_42

    .line 1227
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v10, v10, v7

    if-eqz v10, :cond_3f

    .line 1228
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v2, v10

    .line 1226
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1231
    .end local v0    # "i":I
    :cond_42
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13d

    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_13d

    .line 1232
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v7, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v7, p1, v7

    add-long/2addr v2, v7

    goto/16 :goto_13d

    .line 1258
    :catchall_77
    move-exception v0

    goto/16 :goto_174

    .line 1235
    :cond_7a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7b
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide/16 v11, 0x1

    if-ge v0, v10, :cond_eb

    .line 1236
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v13, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v10, v13, v7

    if-eqz v10, :cond_e8

    .line 1237
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v13, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v13, v4

    cmp-long v10, v13, v7

    if-lez v10, :cond_e8

    .line 1238
    iget-wide v13, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1239
    cmp-long v10, v2, v7

    if-nez v10, :cond_dd

    .line 1240
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_c6

    .line 1241
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v10, v4

    add-long/2addr v2, v10

    goto :goto_e8

    .line 1243
    :cond_c6
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-object v12, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v12, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long/2addr v10, v12

    add-long/2addr v2, v10

    goto :goto_e8

    .line 1245
    :cond_dd
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v2, v10

    .line 1235
    :cond_e8
    :goto_e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 1250
    .end local v0    # "i":I
    :cond_eb
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13d

    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v13, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_13d

    .line 1251
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v7, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v0, v7, v4

    if-gez v0, :cond_123

    .line 1252
    const-wide/32 v2, 0x5265c00

    goto :goto_138

    .line 1254
    :cond_123
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v7, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v7, p1, v7

    add-long/2addr v2, v7

    .line 1255
    :goto_138
    iget-wide v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    add-long/2addr v7, v11

    iput-wide v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1258
    :cond_13d
    :goto_13d
    monitor-exit v9
    :try_end_13e
    .catchall {:try_start_14 .. :try_end_13e} :catchall_77

    .line 1259
    const-wide/32 v7, 0x36ee80

    div-long v9, v2, v7

    .line 1260
    .local v9, "hour":J
    mul-long/2addr v7, v9

    sub-long v7, v2, v7

    const-wide/32 v11, 0xea60

    div-long/2addr v7, v11

    .line 1261
    .local v7, "min":J
    div-long v11, v2, v11

    iput-wide v11, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "h "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "m("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "X)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .end local v6    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 1258
    .end local v0    # "result":Ljava/lang/String;
    .end local v7    # "min":J
    .end local v9    # "hour":J
    .restart local v6    # "result":Ljava/lang/String;
    :goto_174
    :try_start_174
    monitor-exit v9
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_77

    throw v0
.end method

.method public removeLastData(J)V
    .registers 10
    .param p1, "lastTime"    # J

    .line 1203
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-void

    .line 1204
    :cond_7
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1205
    const/4 v3, -0x1

    .line 1206
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    :try_start_c
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_35

    .line 1207
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v5, v5, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v5, v5, v0

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v5, v5, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v5, v5, p1

    if-lez v5, :cond_32

    .line 1208
    move v3, v4

    .line 1209
    goto :goto_35

    .line 1206
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1212
    .end local v4    # "i":I
    :cond_35
    :goto_35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    if-ge v0, v3, :cond_41

    .line 1213
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1215
    .end local v0    # "i":I
    .end local v3    # "index":I
    :cond_41
    monitor-exit v2

    .line 1216
    return-void

    .line 1215
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_43

    throw v0
.end method

.method public setEndTime(J)V
    .registers 6
    .param p1, "time"    # J

    .line 1196
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_3
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    .line 1198
    :cond_d
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->setEndTime(J)V

    .line 1199
    monitor-exit v0

    .line 1200
    return-void

    .line 1199
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
