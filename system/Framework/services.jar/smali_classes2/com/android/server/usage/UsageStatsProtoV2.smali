.class final Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "UsageStatsProtoV2.java"


# static fields
.field private static final ONE_HOUR_MS:J

.field private static final TAG:Ljava/lang/String; = "UsageStatsProtoV2"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOffsetTimestamp(JJ)J
    .registers 8
    .param p0, "timestamp"    # J
    .param p2, "offset"    # J

    .line 307
    sub-long v0, p0, p2

    .line 309
    .local v0, "offsetTimestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_d

    :cond_c
    move-wide v2, v0

    :goto_d
    return-wide v2
.end method

.method private static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 9
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 140
    .local v2, "actionToken":I
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 141
    .local v4, "counts":Landroid/util/SparseIntArray;
    if-nez v4, :cond_2d

    .line 142
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move-object v4, v5

    .line 143
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2d

    .line 146
    .end local v2    # "actionToken":I
    .end local v4    # "counts":Landroid/util/SparseIntArray;
    :cond_27
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v4, v2

    .line 150
    .restart local v4    # "counts":Landroid/util/SparseIntArray;
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_56

    if-eq v2, v3, :cond_4a

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3a

    goto :goto_55

    .line 158
    :cond_3a
    const-wide v5, 0x20b00000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 159
    .local v5, "token":J
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V

    .line 160
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 161
    goto :goto_55

    .line 153
    .end local v5    # "token":J
    :cond_4a
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 155
    .restart local v2    # "actionToken":I
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    nop

    .line 163
    .end local v2    # "actionToken":I
    :goto_55
    goto :goto_2d

    :cond_56
    return-void
.end method

.method private static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "configActive":Z
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 196
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v2}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 197
    .local v2, "configStats":Landroid/app/usage/ConfigurationStats;
    const-wide v3, 0x10b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 199
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 200
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v2

    .line 204
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7b

    const/4 v6, 0x1

    if-eq v5, v6, :cond_65

    const/4 v6, 0x2

    if-eq v5, v6, :cond_56

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4a

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3e

    const/4 v6, 0x5

    if-eq v5, v6, :cond_34

    goto :goto_7a

    .line 227
    :cond_34
    const-wide v5, 0x10800000005L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v0

    .line 229
    goto :goto_7a

    .line 223
    :cond_3e
    const-wide v5, 0x10500000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 225
    goto :goto_7a

    .line 219
    :cond_4a
    const-wide v5, 0x10300000003L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 221
    goto :goto_7a

    .line 215
    :cond_56
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 217
    goto :goto_7a

    .line 207
    :cond_65
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 208
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    .line 209
    .local v5, "temp":Landroid/app/usage/ConfigurationStats;
    iget-wide v6, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 210
    iget-wide v6, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 211
    iget v6, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v6, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 212
    move-object v2, v5

    .line 213
    nop

    .line 234
    .end local v5    # "temp":Landroid/app/usage/ConfigurationStats;
    :goto_7a
    goto :goto_1d

    .line 231
    :cond_7b
    if-eqz v0, :cond_81

    .line 232
    iget-object v3, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 234
    :cond_81
    return-void
.end method

.method private static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 114
    .local v0, "token":J
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 120
    :cond_12
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 122
    goto :goto_2a

    .line 116
    :cond_1e
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 118
    nop

    .line 125
    :goto_2a
    goto :goto_4

    .line 124
    :cond_2b
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 125
    return-void

    .line 128
    .end local v0    # "token":J
    :catch_2f
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read event tracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method

.method private static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "counts"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, "categoryToken":I
    const/4 v1, 0x0

    .line 173
    .local v1, "count":I
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_10

    goto :goto_25

    .line 180
    :cond_10
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 182
    goto :goto_25

    .line 175
    :cond_1a
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 178
    .end local v0    # "categoryToken":I
    .local v2, "categoryToken":I
    move v0, v2

    .line 187
    .end local v2    # "categoryToken":I
    .restart local v0    # "categoryToken":I
    :goto_25
    goto :goto_2

    .line 184
    :cond_26
    if-eq v0, v3, :cond_2b

    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    :cond_2b
    return-void
.end method

.method private static loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    .local p1, "tokensToPackagesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, -0x1

    .line 595
    .local v0, "key":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v1, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    goto :goto_2c

    .line 602
    :cond_14
    const-wide v2, 0x20900000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    goto :goto_2c

    .line 599
    :cond_21
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 600
    .end local v0    # "key":I
    .local v2, "key":I
    move v0, v2

    .line 608
    .end local v2    # "key":I
    .restart local v0    # "key":I
    :goto_2c
    goto :goto_6

    .line 605
    :cond_2d
    if-eq v0, v3, :cond_32

    .line 606
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    :cond_32
    return-void
.end method

.method private static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .registers 7
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 243
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_d0

    :pswitch_c
    goto/16 :goto_ce

    .line 286
    :pswitch_e
    const-wide v1, 0x1050000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 288
    goto/16 :goto_ce

    .line 282
    :pswitch_1d
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 284
    goto/16 :goto_ce

    .line 278
    :pswitch_2c
    const-wide v1, 0x1050000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 280
    goto/16 :goto_ce

    .line 275
    :pswitch_3b
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 276
    goto/16 :goto_ce

    .line 271
    :pswitch_48
    const-wide v1, 0x10500000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 273
    goto/16 :goto_ce

    .line 268
    :pswitch_57
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 269
    goto/16 :goto_ce

    .line 264
    :pswitch_64
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 266
    goto :goto_ce

    .line 260
    :pswitch_72
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 261
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 262
    goto :goto_ce

    .line 257
    :pswitch_84
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 258
    goto :goto_ce

    .line 254
    :pswitch_90
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 255
    goto :goto_ce

    .line 251
    :pswitch_9c
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 252
    goto :goto_ce

    .line 248
    :pswitch_a9
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 249
    goto :goto_ce

    .line 245
    :pswitch_b7
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 246
    goto :goto_ce

    .line 290
    :pswitch_c5
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_cc

    const/4 v1, 0x0

    goto :goto_cd

    :cond_cc
    move-object v1, v0

    :goto_cd
    return-object v1

    :goto_ce
    goto/16 :goto_5

    :pswitch_data_d0
    .packed-switch -0x1
        :pswitch_c5
        :pswitch_c
        :pswitch_b7
        :pswitch_a9
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_72
        :pswitch_64
        :pswitch_57
        :pswitch_48
        :pswitch_3b
        :pswitch_2c
        :pswitch_1d
        :pswitch_e
    .end packed-switch
.end method

.method private static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .registers 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 671
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_de

    :pswitch_c
    goto/16 :goto_dc

    .line 708
    :pswitch_e
    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 709
    goto/16 :goto_dc

    .line 705
    :pswitch_1b
    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 706
    goto/16 :goto_dc

    .line 702
    :pswitch_28
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 703
    goto/16 :goto_dc

    .line 698
    :pswitch_35
    const-wide v1, 0x10900000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 700
    goto/16 :goto_dc

    .line 695
    :pswitch_42
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 696
    goto/16 :goto_dc

    .line 692
    :pswitch_4f
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 693
    goto/16 :goto_dc

    .line 688
    :pswitch_5c
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 689
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 690
    goto/16 :goto_dc

    .line 685
    :pswitch_6f
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 686
    goto :goto_dc

    .line 682
    :pswitch_7b
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 683
    goto :goto_dc

    .line 679
    :pswitch_87
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 680
    goto :goto_dc

    .line 676
    :pswitch_93
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 677
    goto :goto_dc

    .line 673
    :pswitch_9f
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 674
    goto :goto_dc

    .line 712
    :pswitch_ab
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c9

    const/16 v2, 0x8

    const-string v3, ""

    if-eq v1, v2, :cond_c2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_bb

    goto :goto_d4

    .line 724
    :cond_bb
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v1, :cond_d4

    .line 725
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_d4

    .line 719
    :cond_c2
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v1, :cond_d4

    .line 720
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_d4

    .line 714
    :cond_c9
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_d4

    .line 715
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 729
    :cond_d4
    :goto_d4
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_da

    const/4 v1, 0x0

    goto :goto_db

    :cond_da
    move-object v1, v0

    :goto_db
    return-object v1

    :goto_dc
    goto/16 :goto_5

    :pswitch_data_de
    .packed-switch -0x1
        :pswitch_ab
        :pswitch_c
        :pswitch_9f
        :pswitch_93
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_5c
        :pswitch_4f
        :pswitch_42
        :pswitch_35
        :pswitch_28
        :pswitch_1b
        :pswitch_e
    .end packed-switch
.end method

.method private static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 55
    .local v0, "stats":Landroid/app/usage/UsageStats;
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_aa

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_91

    packed-switch v1, :pswitch_data_ba

    goto/16 :goto_b7

    .line 99
    :pswitch_1a
    const-wide v1, 0x1030000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mFgServiceLaunchCount:J

    .line 101
    goto/16 :goto_b7

    .line 94
    :pswitch_27
    const-wide v1, 0x1030000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 96
    goto/16 :goto_b7

    .line 90
    :pswitch_34
    const-wide v1, 0x1030000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 92
    goto/16 :goto_b7

    .line 86
    :pswitch_42
    const-wide v1, 0x10300000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 88
    goto :goto_b7

    .line 82
    :pswitch_4e
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 84
    goto :goto_b7

    .line 74
    :pswitch_5b
    const-wide v1, 0x20b00000007L

    :try_start_60
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 75
    .local v1, "token":J
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 76
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6a} :catch_6b

    .line 79
    .end local v1    # "token":J
    goto :goto_b7

    .line 77
    :catch_6b
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read chooser counts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsProtoV2"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_b7

    .line 69
    :pswitch_85
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 71
    goto :goto_b7

    .line 65
    :cond_91
    const-wide v1, 0x10300000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 67
    goto :goto_b7

    .line 61
    :cond_9d
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 63
    goto :goto_b7

    .line 57
    :cond_aa
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 59
    nop

    .line 104
    :goto_b7
    goto/16 :goto_5

    :cond_b9
    return-object v0

    :pswitch_data_ba
    .packed-switch 0x6
        :pswitch_85
        :pswitch_5b
        :pswitch_4e
        :pswitch_42
        :pswitch_34
        :pswitch_27
        :pswitch_1a
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 452
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_ac

    packed-switch v1, :pswitch_data_f2

    const-string v3, "UsageStatsProtoV2"

    packed-switch v1, :pswitch_data_fe

    goto/16 :goto_d3

    .line 504
    :pswitch_1f
    const-wide v1, 0x20b00000016L

    :try_start_24
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 506
    .local v1, "eventsToken":J
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    .line 507
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 508
    if-eqz v4, :cond_38

    .line 509
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_38} :catch_3a

    .line 513
    .end local v1    # "eventsToken":J
    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_38
    goto/16 :goto_d3

    .line 511
    :catch_3a
    move-exception v1

    .line 512
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read some events from proto."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_d3

    .line 494
    :pswitch_42
    const-wide v1, 0x20b00000015L

    :try_start_47
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 496
    .local v1, "configsToken":J
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 497
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_51} :catch_53

    .line 500
    .end local v1    # "configsToken":J
    goto/16 :goto_d3

    .line 498
    :catch_53
    move-exception v1

    .line 499
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read some configuration stats from proto."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_d3

    .line 481
    :pswitch_5b
    const-wide v4, 0x20b00000014L

    :try_start_60
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 483
    .local v4, "packagesToken":J
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v6, v7}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object v1

    .line 484
    .local v1, "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 485
    iget v6, v1, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v6, v2, :cond_78

    .line 486
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    iget v6, v1, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_78} :catch_79

    .line 490
    .end local v1    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v4    # "packagesToken":J
    :cond_78
    goto :goto_d3

    .line 488
    :catch_79
    move-exception v1

    .line 489
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read some usage stats from proto."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_d3

    .line 476
    :pswitch_80
    const-wide v1, 0x10b0000000dL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 478
    goto :goto_d3

    .line 472
    :pswitch_8b
    const-wide v1, 0x10b0000000cL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 474
    goto :goto_d3

    .line 468
    :pswitch_96
    const-wide v1, 0x10b0000000bL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 470
    goto :goto_d3

    .line 464
    :pswitch_a1
    const-wide v1, 0x10b0000000aL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 466
    goto :goto_d3

    .line 461
    :cond_ac
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 462
    goto :goto_d3

    .line 458
    :cond_b8
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 459
    goto :goto_d3

    .line 454
    :cond_c4
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 456
    nop

    .line 523
    :goto_d3
    goto/16 :goto_5

    .line 517
    :cond_d5
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 518
    .local v1, "usageStatsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dc
    if-ge v2, v1, :cond_f1

    .line 519
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 520
    .local v3, "usageStats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 521
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 518
    .end local v3    # "usageStats":Landroid/app/usage/UsageStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 523
    .end local v2    # "i":I
    :cond_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0xa
        :pswitch_a1
        :pswitch_96
        :pswitch_8b
        :pswitch_80
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x14
        :pswitch_5b
        :pswitch_42
        :pswitch_1f
    .end packed-switch
.end method

.method static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 623
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    goto :goto_31

    .line 628
    :cond_13
    const-wide v1, 0x20b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 629
    .local v1, "token":J
    iget-object v3, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 631
    goto :goto_31

    .line 625
    .end local v1    # "token":J
    :cond_25
    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    .line 626
    nop

    .line 633
    :goto_31
    goto :goto_5

    :cond_32
    return-void
.end method

.method static readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 744
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    const/16 v2, 0x17

    if-eq v1, v2, :cond_11

    goto :goto_30

    .line 747
    :cond_11
    const-wide v1, 0x20b00000017L

    :try_start_16
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 748
    .local v1, "token":J
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 749
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 750
    if-eqz v3, :cond_26

    .line 751
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_27

    .line 755
    .end local v1    # "token":J
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_26
    goto :goto_30

    .line 753
    :catch_27
    move-exception v1

    .line 754
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsProtoV2"

    const-string v3, "Unable to parse some pending events from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 758
    :goto_30
    goto :goto_5

    :cond_31
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 13
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 536
    const-string v0, "UsageStatsProtoV2"

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 537
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 538
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    .line 537
    const-wide v4, 0x10300000001L

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 539
    iget v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v3, 0x10500000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 540
    iget v2, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v3, 0x10500000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 543
    const-wide v3, 0x10b0000000aL

    :try_start_30
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 545
    const-wide v3, 0x10b0000000bL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 547
    const-wide v3, 0x10b0000000cL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 549
    const-wide v3, 0x10b0000000dL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_6f} :catch_70

    .line 553
    goto :goto_76

    .line 551
    :catch_70
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Unable to write some interval stats trackers to proto."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_76
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 556
    .local v2, "statsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7d
    if-ge v3, v2, :cond_a2

    .line 558
    const-wide v4, 0x20b00000014L

    :try_start_84
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 559
    .local v4, "token":J
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v8, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-static {v1, v6, v7, v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 560
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_98} :catch_99

    .line 563
    .end local v4    # "token":J
    goto :goto_9f

    .line 561
    :catch_99
    move-exception v4

    .line 562
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Unable to write some usage stats to proto."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 565
    .end local v3    # "i":I
    :cond_a2
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 566
    .local v3, "configCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a9
    if-ge v4, v3, :cond_dc

    .line 567
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    .line 569
    .local v5, "active":Z
    const-wide v6, 0x20b00000015L

    :try_start_be
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 570
    .local v6, "token":J
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v10, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/ConfigurationStats;

    invoke-static {v1, v8, v9, v10, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V

    .line 571
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_d2} :catch_d3

    .line 574
    .end local v6    # "token":J
    goto :goto_d9

    .line 572
    :catch_d3
    move-exception v6

    .line 573
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Unable to write some configuration stats to proto."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v5    # "active":Z
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_d9
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 576
    .end local v4    # "i":I
    :cond_dc
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    .line 577
    .local v4, "eventCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e3
    if-ge v5, v4, :cond_106

    .line 579
    const-wide v6, 0x20b00000016L

    :try_start_ea
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 580
    .local v6, "token":J
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v10, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v10, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v10

    invoke-static {v1, v8, v9, v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 581
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_fc} :catch_fd

    .line 584
    .end local v6    # "token":J
    goto :goto_103

    .line 582
    :catch_fd
    move-exception v6

    .line 583
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Unable to write some events to proto."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_103
    add-int/lit8 v5, v5, 0x1

    goto :goto_e3

    .line 587
    .end local v5    # "i":I
    :cond_106
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 588
    return-void
.end method

.method private static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 349
    if-eqz p1, :cond_48

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_48

    .line 352
    :cond_b
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 353
    .local v0, "chooserCountSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_47

    .line 354
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 355
    .local v2, "action":I
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 356
    .local v3, "counts":Landroid/util/SparseIntArray;
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_2b

    .line 357
    goto :goto_44

    .line 359
    :cond_2b
    const-wide v4, 0x20b00000007L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 360
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 361
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V

    .line 362
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 353
    .end local v2    # "action":I
    .end local v3    # "counts":Landroid/util/SparseIntArray;
    .end local v4    # "token":J
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 364
    .end local v1    # "i":I
    :cond_47
    return-void

    .line 350
    .end local v0    # "chooserCountSize":I
    :cond_48
    :goto_48
    return-void
.end method

.method private static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V
    .registers 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "statsBeginTime"    # J
    .param p3, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p4, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 386
    iget-object v0, p3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 388
    iget-wide v6, p3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide v4, 0x10300000002L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 390
    iget-wide v0, p3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 392
    iget v0, p3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 393
    const-wide v0, 0x10800000005L

    invoke-virtual {p0, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 394
    return-void
.end method

.method private static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "count"    # I
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 342
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 343
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 344
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 345
    return-void
.end method

.method private static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "counts"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 368
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 369
    .local v0, "countsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_33

    .line 370
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 371
    .local v2, "category":I
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 372
    .local v3, "count":I
    if-gtz v3, :cond_12

    .line 373
    goto :goto_30

    .line 375
    :cond_12
    const-wide v4, 0x20b00000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 376
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 378
    const-wide v6, 0x10500000002L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 379
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 369
    .end local v2    # "category":I
    .end local v3    # "count":I
    .end local v4    # "token":J
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 381
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method private static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .registers 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "statsBeginTime"    # J
    .param p3, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 398
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 399
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 400
    const-wide v2, 0x10500000002L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 402
    :cond_1d
    const-wide v5, 0x10300000003L

    iget-wide v7, p3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 403
    const-wide v2, 0x10500000004L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 404
    const-wide v2, 0x10500000005L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 405
    const-wide v2, 0x1050000000aL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 406
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v0, v1, :cond_57

    .line 407
    const-wide v2, 0x1050000000bL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 410
    :cond_57
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v0, v1, :cond_67

    .line 411
    const-wide v2, 0x1050000000cL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 413
    :cond_67
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_bf

    const/16 v2, 0x8

    if-eq v0, v2, :cond_ae

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_9d

    const/16 v2, 0xb

    if-eq v0, v2, :cond_8e

    const/16 v2, 0xc

    if-eq v0, v2, :cond_7d

    goto :goto_cd

    .line 435
    :cond_7d
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq v0, v1, :cond_cd

    .line 436
    const-wide v0, 0x10500000009L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_cd

    .line 420
    :cond_8e
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_cd

    .line 421
    const-wide v0, 0x10500000008L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_cd

    .line 430
    :cond_9d
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq v0, v1, :cond_cd

    .line 431
    const-wide v0, 0x1050000000dL

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_cd

    .line 425
    :cond_ae
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq v0, v1, :cond_cd

    .line 426
    const-wide v0, 0x10500000007L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_cd

    .line 415
    :cond_bf
    iget-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_cd

    .line 416
    iget-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 441
    :cond_cd
    :goto_cd
    return-void
.end method

.method static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 16
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 646
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 647
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget v1, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v2, 0x10500000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 649
    iget-object v1, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 650
    .local v1, "mapSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v1, :cond_52

    .line 651
    const-wide v5, 0x20b00000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 652
    .local v5, "token":J
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 653
    .local v7, "packageToken":I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 655
    iget-object v8, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 656
    .local v8, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 657
    .local v9, "listSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_39
    if-ge v10, v9, :cond_4c

    .line 658
    const-wide v11, 0x20900000002L

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 657
    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 660
    .end local v10    # "j":I
    :cond_4c
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 650
    .end local v5    # "token":J
    .end local v7    # "packageToken":I
    .end local v8    # "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "listSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 663
    .end local v4    # "i":I
    :cond_52
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 664
    return-void
.end method

.method static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "timestamp"    # J
    .param p5, "beginTime"    # J

    .line 299
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    .line 300
    .local v0, "rolloverGracePeriod":J
    cmp-long v2, p3, v0

    if-lez v2, :cond_f

    .line 302
    invoke-static {p3, p4, p5, p6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 304
    :cond_f
    return-void
.end method

.method private static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 765
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 766
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 767
    const-wide v0, 0x10900000002L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 769
    :cond_18
    const-wide v0, 0x10300000003L

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 770
    const-wide v0, 0x10500000004L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 771
    const-wide v0, 0x10500000005L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 772
    const-wide v0, 0x1050000000aL

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 773
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 774
    const-wide v0, 0x1090000000bL

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 776
    :cond_4e
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 777
    const-wide v0, 0x1090000000cL

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 779
    :cond_5c
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6e

    goto :goto_a9

    .line 796
    :cond_6e
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_a9

    .line 797
    const-wide v0, 0x10900000009L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_a9

    .line 786
    :cond_7d
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_a9

    .line 787
    const-wide v0, 0x10500000008L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_a9

    .line 791
    :cond_8c
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_a9

    .line 792
    const-wide v0, 0x10900000007L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_a9

    .line 781
    :cond_9b
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_a9

    .line 782
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 802
    :cond_a9
    :goto_a9
    return-void
.end method

.method static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .registers 8
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 812
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 813
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 814
    .local v1, "eventCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2d

    .line 816
    const-wide v3, 0x20b00000017L

    :try_start_11
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 817
    .local v3, "token":J
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 818
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_21} :catch_22

    .line 821
    .end local v3    # "token":J
    goto :goto_2a

    .line 819
    :catch_22
    move-exception v3

    .line 820
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "UsageStatsProtoV2"

    const-string v5, "Unable to write some pending events to proto."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 823
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 824
    return-void
.end method

.method private static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .registers 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "beginTime"    # J
    .param p3, "stats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    iget v0, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 315
    iget-wide v6, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-wide v4, 0x10300000003L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 317
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-wide v2, 0x10300000004L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 318
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    const-wide v5, 0x10300000008L

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 320
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    const-wide v2, 0x10300000009L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 322
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    const-wide v5, 0x1030000000aL

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 324
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    const-wide v2, 0x1030000000bL

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 325
    iget v0, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 328
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mFgServiceLaunchCount:J

    const-wide v2, 0x1030000000cL

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 333
    :try_start_60
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_64

    .line 336
    goto :goto_7d

    .line 334
    :catch_64
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7d
    return-void
.end method
