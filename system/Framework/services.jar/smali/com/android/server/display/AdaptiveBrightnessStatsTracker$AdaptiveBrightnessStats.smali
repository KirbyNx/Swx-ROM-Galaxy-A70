.class Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdaptiveBrightnessStats"
.end annotation


# static fields
.field private static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field private static final ATTR_BUCKET_LAST_USER_BRIGHTNESS_TIME:Ljava/lang/String; = "last-user-brighntess-time"

.field private static final ATTR_BUCKET_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field private static final ATTR_BUCKET_WEIGHT:Ljava/lang/String; = "weight"

.field private static final ATTR_LEARNED_BRIGHTNESS:Ljava/lang/String; = "brightness-learned"

.field private static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final TAG_ADAPTIVE_BRIGHTNESS_STATS:Ljava/lang/String; = "SBS-stats"

.field private static final TAG_ADAPTIVE_BRIGHTNESS_WEIGHT_STATS:Ljava/lang/String; = "adaptive-brightness-weight-stats"

.field private static final TAG_END_STATS:Ljava/lang/String; = "END"

.field private static final TAG_LUX_STATS:Ljava/lang/String; = "fixed-lux-zone"


# instance fields
.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .param p2, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 228
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 230
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 231
    return-void
.end method

.method private getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;I)",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;"
        }
    .end annotation

    .line 434
    .local p1, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F
    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$200(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object v0
.end method

.method private getOrCreateUserStats(Ljava/util/Map;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 8
    .param p2, "weightStats"    # [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;[",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;",
            "I)",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;"
        }
    .end annotation

    .line 442
    .local p1, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 443
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F
    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$200(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v1, v2, p2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object v0
.end method


# virtual methods
.method public getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 4
    .param p1, "userId"    # I

    .line 247
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 248
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object v0

    .line 250
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "localDate"    # Ljava/time/LocalDate;
    .param p3, "ambientLux"    # F
    .param p4, "screenBrightness"    # F
    .param p5, "durationSec"    # F
    .param p6, "screenBrightnessSpline"    # Landroid/util/Spline;
    .param p7, "brightnessChangeEventForUserInitiated"    # Landroid/hardware/display/BrightnessChangeEvent;
    .param p8, "screenBrightnessSplineForUserInitiated"    # Landroid/util/Spline;
    .param p9, "userInitiated"    # Z

    .line 237
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    move v2, p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v1

    .line 239
    .local v1, "weightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    move-object v3, v1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    .line 244
    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .registers 34
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    move-object/from16 v1, p0

    const-string v2, "]["

    :try_start_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v3, "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 336
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 339
    :goto_18
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v7, v5

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_24

    const/4 v5, 0x2

    if-eq v7, v5, :cond_24

    goto :goto_18

    .line 342
    :cond_24
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "tag":Ljava/lang/String;
    const-string v9, "SBS-stats"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e8

    .line 348
    const/4 v9, 0x0

    .line 349
    .local v9, "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    const/4 v10, 0x0

    .line 350
    .local v10, "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 351
    .local v11, "outerDepth":I
    const/4 v12, 0x0

    .line 355
    .local v12, "statsCount":I
    const/4 v13, 0x0

    .line 356
    .local v13, "bucketLength":I
    const/4 v14, -0x1

    .line 358
    .local v14, "userId":I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 359
    :goto_3c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move v7, v15

    if-eq v15, v8, :cond_1dc

    const/4 v15, 0x3

    if-ne v7, v15, :cond_57

    .line 360
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v11, :cond_4d

    goto :goto_57

    :cond_4d
    move-object/from16 v30, v4

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_1e4

    .line 361
    :cond_57
    :goto_57
    if-eq v7, v15, :cond_1c3

    const/4 v8, 0x4

    if-ne v7, v8, :cond_68

    .line 362
    move-object/from16 v20, v2

    move-object/from16 v30, v4

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_1cd

    .line 364
    :cond_68
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 367
    const-string v8, "fixed-lux-zone"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_73
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_73} :catch_201
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_73} :catch_201
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_73} :catch_201
    .catch Ljava/time/format/DateTimeParseException; {:try_start_4 .. :try_end_73} :catch_201
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_73} :catch_201

    const-string v15, "AdaptiveBrightnessStatsTracker"

    const/4 v6, 0x0

    if-eqz v8, :cond_ee

    .line 368
    :try_start_78
    const-string/jumbo v8, "user"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "userSerialNumber":Ljava/lang/String;
    const-string v6, "bucket-boundaries"

    move/from16 v17, v7

    const/4 v7, 0x0

    .end local v7    # "type":I
    .local v17, "type":I
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "bucketBoundaries":[Ljava/lang/String;
    array-length v7, v6

    .line 371
    .end local v13    # "bucketLength":I
    .local v7, "bucketLength":I
    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;
    invoke-static {v13}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$100(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    move-result-object v13

    move-object/from16 v18, v9

    .end local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .local v18, "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;
    invoke-static {v9}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$000(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v9

    move-object/from16 v19, v10

    .end local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .local v19, "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v9, v10}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v9

    .line 372
    .end local v14    # "userId":I
    .local v9, "userId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TAG_LUX_STATS ["

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 373
    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F
    invoke-static {v13}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$200(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 372
    invoke-static {v15, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz v6, :cond_e9

    if-eqz v7, :cond_e9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e9

    iget-object v10, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 377
    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F
    invoke-static {v10}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$200(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v10

    array-length v10, v10

    if-ne v7, v10, :cond_e9

    .line 378
    new-array v10, v7, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 379
    .end local v19    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    const/4 v12, 0x0

    move v13, v7

    move v14, v9

    goto :goto_f4

    .line 384
    .end local v6    # "bucketBoundaries":[Ljava/lang/String;
    .end local v8    # "userSerialNumber":Ljava/lang/String;
    .end local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v19    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    :cond_e9
    move v13, v7

    move v14, v9

    move-object/from16 v10, v19

    goto :goto_f4

    .line 367
    .end local v17    # "type":I
    .end local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v19    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .local v7, "type":I
    .local v9, "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .restart local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v13    # "bucketLength":I
    .restart local v14    # "userId":I
    :cond_ee
    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 384
    .end local v7    # "type":I
    .end local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .restart local v17    # "type":I
    .restart local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    :goto_f4
    const-string v6, "adaptive-brightness-weight-stats"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18f

    .line 385
    const-string/jumbo v6, "lux"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, "lux":Ljava/lang/String;
    const-string v8, "brightness-learned"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, "brightness_learned":Ljava/lang/String;
    const-string/jumbo v9, "weight"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, "weight":Ljava/lang/String;
    const-string/jumbo v7, "last-user-brighntess-time"

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "lastUserBrightnessTime":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 391
    .local v7, "parsedLux":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v19, v16

    .line 392
    .local v19, "parsedBrightness_learned":F
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v27, v16

    .line 393
    .local v27, "parsedWeight":F
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v28, v21

    .line 395
    .local v28, "parsedLastUserBrightnessTime":J
    move-object/from16 v16, v2

    .end local v2    # "lastUserBrightnessTime":Ljava/lang/String;
    .local v16, "lastUserBrightnessTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v4

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v30, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v4, "readFromXML: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] l = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", br = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v19

    .end local v19    # "parsedBrightness_learned":F
    .local v4, "parsedBrightness_learned":F
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v19, v6

    .end local v6    # "lux":Ljava/lang/String;
    .local v19, "lux":Ljava/lang/String;
    const-string v6, ", w = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v27

    .end local v27    # "parsedWeight":F
    .local v6, "parsedWeight":F
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v27, v8

    .end local v8    # "brightness_learned":Ljava/lang/String;
    .local v27, "brightness_learned":Ljava/lang/String;
    const-string v8, ", t = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v9

    move-wide/from16 v8, v28

    .end local v9    # "weight":Ljava/lang/String;
    .end local v28    # "parsedLastUserBrightnessTime":J
    .local v8, "parsedLastUserBrightnessTime":J
    .local v31, "weight":Ljava/lang/String;
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-eqz v10, :cond_193

    if-ge v12, v13, :cond_193

    .line 399
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "statsCount":I
    .local v2, "statsCount":I
    new-instance v28, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-object/from16 v21, v28

    move/from16 v22, v7

    move/from16 v23, v4

    move/from16 v24, v6

    move-wide/from16 v25, v8

    invoke-direct/range {v21 .. v26}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    aput-object v28, v10, v12

    move v12, v2

    goto :goto_193

    .line 384
    .end local v2    # "statsCount":I
    .end local v6    # "parsedWeight":F
    .end local v7    # "parsedLux":F
    .end local v8    # "parsedLastUserBrightnessTime":J
    .end local v16    # "lastUserBrightnessTime":Ljava/lang/String;
    .end local v19    # "lux":Ljava/lang/String;
    .end local v27    # "brightness_learned":Ljava/lang/String;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "weight":Ljava/lang/String;
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "statsCount":I
    :cond_18f
    move-object/from16 v20, v2

    move-object/from16 v30, v4

    .line 404
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_193
    :goto_193
    const-string v2, "END"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 405
    const/4 v2, -0x1

    if-eq v14, v2, :cond_1b6

    if-eqz v10, :cond_1b6

    .line 406
    const-string/jumbo v2, "getOrCreateUserStats from xml"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {v1, v3, v10, v14}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v2

    move-object v9, v2

    move-object/from16 v6, p1

    move/from16 v7, v17

    move-object/from16 v2, v20

    move-object/from16 v4, v30

    const/4 v8, 0x1

    .end local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .local v9, "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    goto/16 :goto_3c

    .line 359
    .end local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .restart local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    :cond_1b6
    move-object/from16 v6, p1

    move/from16 v7, v17

    move-object/from16 v9, v18

    move-object/from16 v2, v20

    move-object/from16 v4, v30

    const/4 v8, 0x1

    goto/16 :goto_3c

    .line 361
    .end local v17    # "type":I
    .end local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "type":I
    .restart local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    :cond_1c3
    move-object/from16 v20, v2

    move-object/from16 v30, v4

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 359
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v17    # "type":I
    .restart local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .local v19, "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1cd
    move-object/from16 v6, p1

    move/from16 v7, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v2, v20

    move-object/from16 v4, v30

    const/4 v8, 0x1

    goto/16 :goto_3c

    .end local v17    # "type":I
    .end local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v19    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    .restart local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .restart local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    :cond_1dc
    move-object/from16 v30, v4

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 412
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v10    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v17    # "type":I
    .restart local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .restart local v19    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1e4
    iput-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 417
    .end local v3    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    .end local v5    # "tag":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v12    # "statsCount":I
    .end local v13    # "bucketLength":I
    .end local v14    # "userId":I
    .end local v17    # "type":I
    .end local v18    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v19    # "userStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 418
    return-void

    .line 344
    .restart local v3    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_1e8
    move-object/from16 v30, v4

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ambient brightness stats not found in tracker file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v2
    :try_end_201
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_201} :catch_201
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_201} :catch_201
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_201} :catch_201
    .catch Ljava/time/format/DateTimeParseException; {:try_start_78 .. :try_end_201} :catch_201
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_201} :catch_201

    .line 414
    .end local v3    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_201
    move-exception v0

    move-object v2, v0

    .line 416
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to parse brightness stats file."

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setMaxWeight(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v0

    if-nez v0, :cond_10

    .line 256
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v0

    .line 257
    .local v0, "weightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->setMaxWeight()V

    .line 258
    .end local v0    # "weightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    goto :goto_18

    .line 261
    :cond_10
    const-string v0, "AdaptiveBrightnessStatsTracker"

    const-string/jumbo v1, "setMaxWeight: shoudn\'t be here"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_18
    return-void
.end method

.method public summarizeStats(ILjava/time/LocalDate;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "localDate"    # Ljava/time/LocalDate;

    .line 266
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v0

    .line 267
    .local v0, "weightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->summarizeStats()V

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 424
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 425
    .local v3, "dayStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    .end local v3    # "dayStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    goto :goto_f

    .line 429
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .registers 19
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 272
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 274
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 275
    const-string v2, "AdaptiveBrightnessStatsTracker"

    const-string/jumbo v4, "writeToXML start"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v4, "SBS-stats"

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 278
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;
    invoke-static {v8}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$100(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;
    invoke-static {v9}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->access$000(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    .line 279
    .local v8, "userSerialNumber":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userSerialNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v9, -0x1

    if-eq v8, v9, :cond_19c

    .line 281
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 284
    .local v9, "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    const-string v10, "fixed-lux-zone"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v11, "bucketBoundariesValues":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_97
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketBoundaries()[F

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_b1

    .line 288
    if-lez v12, :cond_a5

    .line 289
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_a5
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketBoundaries()[F

    move-result-object v13

    aget v13, v13, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v12, v12, 0x1

    goto :goto_97

    .line 293
    .end local v12    # "i":I
    :cond_b1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "bucket-boundaries"

    invoke-interface {v1, v5, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_be
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v12

    array-length v12, v12

    if-ge v10, v12, :cond_190

    .line 298
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v12, "lux":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v13, "brightness":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v14, "weight":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v15, "lastUserBrightnessTime":Ljava/lang/StringBuilder;
    const-string v0, "adaptive-brightness-weight-stats"

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v16

    aget-object v16, v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v5

    aget-object v5, v5, v10

    move-object/from16 v16, v6

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "lux"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "brightness-learned"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "weight"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "last-user-brighntess-time"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeToXML: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] l="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", br="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", w="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", t="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    .end local v12    # "lux":Ljava/lang/StringBuilder;
    .end local v13    # "brightness":Ljava/lang/StringBuilder;
    .end local v14    # "weight":Ljava/lang/StringBuilder;
    .end local v15    # "lastUserBrightnessTime":Ljava/lang/StringBuilder;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v5, v3

    move-object/from16 v6, v16

    move-object/from16 v3, p1

    goto/16 :goto_be

    :cond_190
    move-object v3, v5

    move-object/from16 v16, v6

    .line 322
    .end local v10    # "i":I
    const-string v0, "END"

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19f

    .line 280
    .end local v9    # "userWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .end local v11    # "bucketBoundariesValues":Ljava/lang/StringBuilder;
    :cond_19c
    move-object v3, v5

    move-object/from16 v16, v6

    .line 325
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/display/AdaptiveBrightnessWeightStats;>;"
    .end local v8    # "userSerialNumber":I
    :goto_19f
    move-object/from16 v0, p0

    move-object v5, v3

    move-object/from16 v6, v16

    move-object/from16 v3, p1

    goto/16 :goto_38

    .line 326
    :cond_1a8
    move-object v3, v5

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 328
    const-string/jumbo v0, "writeToXML done"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 330
    return-void
.end method
