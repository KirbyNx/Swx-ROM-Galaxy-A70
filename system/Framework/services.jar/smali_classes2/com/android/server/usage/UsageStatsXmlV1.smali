.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final APP_LAUNCH_COUNT_ATTR:Ljava/lang/String; = "appLaunchCount"

.field private static final CATEGORY_TAG:Ljava/lang/String; = "category"

.field private static final CHOOSER_COUNT_TAG:Ljava/lang/String; = "chosen_action"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final FLAGS_ATTR:Ljava/lang/String; = "flags"

.field private static final INSTANCE_ID_ATTR:Ljava/lang/String; = "instanceId"

.field private static final INTERACTIVE_TAG:Ljava/lang/String; = "interactive"

.field private static final KEYGUARD_HIDDEN_TAG:Ljava/lang/String; = "keyguard-hidden"

.field private static final KEYGUARD_SHOWN_TAG:Ljava/lang/String; = "keyguard-shown"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final LAST_TIME_SERVICE_USED_ATTR:Ljava/lang/String; = "lastTimeServiceUsed"

.field private static final LAST_TIME_VISIBLE_ATTR:Ljava/lang/String; = "lastTimeVisible"

.field private static final MAJOR_VERSION_ATTR:Ljava/lang/String; = "majorVersion"

.field private static final MINOR_VERSION_ATTR:Ljava/lang/String; = "minorVersion"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NON_INTERACTIVE_TAG:Ljava/lang/String; = "non-interactive"

.field private static final NOTIFICATION_CHANNEL_ATTR:Ljava/lang/String; = "notificationChannel"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final SHORTCUT_ID_ATTR:Ljava/lang/String; = "shortcutId"

.field private static final STANDBY_BUCKET_ATTR:Ljava/lang/String; = "standbyBucket"

.field private static final TAG:Ljava/lang/String; = "UsageStatsXmlV1"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TOTAL_TIME_SERVICE_USED_ATTR:Ljava/lang/String; = "timeServiceUsed"

.field private static final TOTAL_TIME_VISIBLE_ATTR:Ljava/lang/String; = "timeVisible"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method private static loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "usageStats"    # Landroid/app/usage/UsageStats;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    if-nez p2, :cond_3

    .line 156
    return-void

    .line 158
    :cond_3
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_e

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 161
    :cond_e
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 163
    .local v0, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v0    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_20
    :goto_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "eventCode":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_61

    .line 168
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "tag":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    const-string v2, "chosen_action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 170
    goto :goto_61

    .line 172
    :cond_38
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3c

    .line 173
    goto :goto_20

    .line 175
    :cond_3c
    const-string v2, "category"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 176
    const-string/jumbo v2, "name"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "category":Ljava/lang/String;
    const-string v3, "count"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 178
    .local v3, "count":I
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v0    # "tag":Ljava/lang/String;
    .end local v2    # "category":Ljava/lang/String;
    .end local v3    # "count":I
    :cond_60
    goto :goto_20

    .line 181
    :cond_61
    :goto_61
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 186
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 188
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 191
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 194
    const-string/jumbo v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 195
    const-string v2, "count"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 196
    const-string v2, "active"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 197
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 199
    :cond_35
    return-void
.end method

.method private static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 147
    const-string v0, "count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 148
    const-string/jumbo v0, "time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 149
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 150
    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const-string/jumbo v0, "package"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_92

    .line 207
    const-string v1, "class"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 211
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "flags"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 214
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v3, "time"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 216
    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 219
    :try_start_31
    const-string/jumbo v3, "instanceId"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 222
    goto :goto_43

    .line 220
    :catch_3b
    move-exception v3

    .line 221
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "UsageStatsXmlV1"

    const-string v6, "Failed to parse mInstanceId"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v3    # "e":Ljava/io/IOException;
    :goto_43
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_81

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v3, v5, :cond_71

    const/16 v5, 0xb

    if-eq v3, v5, :cond_67

    const/16 v4, 0xc

    if-eq v3, v4, :cond_56

    goto :goto_8e

    .line 237
    :cond_56
    nop

    .line 238
    const-string/jumbo v3, "notificationChannel"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "channelId":Ljava/lang/String;
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :cond_64
    iput-object v6, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_8e

    .line 234
    .end local v3    # "channelId":Ljava/lang/String;
    :cond_67
    const-string/jumbo v3, "standbyBucket"

    invoke-static {p0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 235
    goto :goto_8e

    .line 230
    :cond_71
    const-string/jumbo v3, "shortcutId"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :cond_7e
    iput-object v6, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 232
    goto :goto_8e

    .line 226
    .end local v3    # "id":Ljava/lang/String;
    :cond_81
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 227
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v3}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 228
    nop

    .line 242
    :goto_8e
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 243
    return-void

    .line 205
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_92
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "no package attribute present"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-string v0, "UsageStatsXmlV1"

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_ab

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v3

    .line 93
    .local v3, "stats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "lastTimeActive"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 97
    :try_start_1c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "lastTimeVisible"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_29

    .line 101
    goto :goto_2f

    .line 99
    :catch_29
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mLastTimeVisible"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "lastTimeServiceUsed"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_3c

    .line 108
    goto :goto_42

    .line 106
    :catch_3c
    move-exception v4

    .line 107
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mLastTimeForegroundServiceUsed"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :goto_42
    const-string/jumbo v4, "timeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 113
    :try_start_4b
    const-string/jumbo v4, "timeVisible"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_55

    .line 116
    goto :goto_5b

    .line 114
    :catch_55
    move-exception v4

    .line 115
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mTotalTimeVisible"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5b
    :try_start_5b
    const-string/jumbo v4, "timeServiceUsed"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_65

    .line 123
    goto :goto_6b

    .line 121
    :catch_65
    move-exception v4

    .line 122
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mTotalTimeForegroundServiceUsed"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :goto_6b
    const-string/jumbo v0, "lastEvent"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 126
    const/4 v0, 0x0

    const-string v4, "appLaunchCount"

    invoke-static {p0, v4, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 129
    :goto_7d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v4, v0

    .local v4, "eventCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_aa

    .line 130
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "tag":Ljava/lang/String;
    const/4 v5, 0x3

    if-ne v4, v5, :cond_93

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 132
    goto :goto_aa

    .line 134
    :cond_93
    const/4 v5, 0x2

    if-eq v4, v5, :cond_97

    .line 135
    goto :goto_7d

    .line 137
    :cond_97
    const-string v5, "chosen_action"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 138
    const-string/jumbo v5, "name"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "action":Ljava/lang/String;
    invoke-static {p0, v3, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V

    .line 141
    .end local v0    # "tag":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    :cond_a9
    goto :goto_7d

    .line 142
    :cond_aa
    :goto_aa
    return-void

    .line 88
    .end local v3    # "stats":Landroid/app/usage/UsageStats;
    .end local v4    # "eventCode":I
    :cond_ab
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v2, "no package attribute present"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const-string v0, "UsageStatsXmlV1"

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 255
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 256
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 257
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 259
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "endTime"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 261
    :try_start_1f
    const-string/jumbo v1, "majorVersion"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_29

    .line 264
    goto :goto_2f

    .line 262
    :catch_29
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to parse majorVersion"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    const-string/jumbo v1, "minorVersion"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_39

    .line 270
    goto :goto_3f

    .line 268
    :catch_39
    move-exception v1

    .line 269
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v2, "Failed to parse minorVersion"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 274
    .local v0, "outerDepth":I
    :goto_43
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "eventCode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_da

    const/4 v1, 0x3

    if-ne v2, v1, :cond_54

    .line 275
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_da

    .line 276
    :cond_54
    const/4 v4, 0x2

    if-eq v2, v4, :cond_58

    .line 277
    goto :goto_43

    .line 280
    :cond_58
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "tag":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_dc

    :cond_64
    goto :goto_af

    :sswitch_65
    const-string/jumbo v1, "interactive"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x0

    goto :goto_b0

    :sswitch_70
    const-string/jumbo v1, "keyguard-shown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v3, v4

    goto :goto_b0

    :sswitch_7b
    const-string v1, "event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x6

    goto :goto_b0

    :sswitch_85
    const-string/jumbo v1, "package"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x4

    goto :goto_b0

    :sswitch_90
    const-string/jumbo v1, "non-interactive"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_b0

    :sswitch_9a
    const-string/jumbo v3, "keyguard-hidden"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v1

    goto :goto_b0

    :sswitch_a5
    const-string v1, "config"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x5

    goto :goto_b0

    :goto_af
    move v3, v6

    :goto_b0
    packed-switch v3, :pswitch_data_fa

    goto :goto_d8

    .line 307
    :pswitch_b4
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_d8

    .line 303
    :pswitch_b8
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 304
    goto :goto_d8

    .line 299
    :pswitch_bc
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 300
    goto :goto_d8

    .line 295
    :pswitch_c0
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 296
    goto :goto_d8

    .line 291
    :pswitch_c6
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 292
    goto :goto_d8

    .line 287
    :pswitch_cc
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 288
    goto :goto_d8

    .line 283
    :pswitch_d2
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 284
    nop

    .line 310
    .end local v5    # "tag":Ljava/lang/String;
    :goto_d8
    goto/16 :goto_43

    .line 311
    :cond_da
    return-void

    nop

    :sswitch_data_dc
    .sparse-switch
        -0x50c07cbe -> :sswitch_a5
        -0x45b2e24f -> :sswitch_9a
        -0x301c401e -> :sswitch_90
        -0x301acbba -> :sswitch_85
        0x5c6729a -> :sswitch_7b
        0x1f63682a -> :sswitch_70
        0x6deacee2 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
    .end packed-switch
.end method
