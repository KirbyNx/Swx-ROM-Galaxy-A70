.class Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;
.super Ljava/lang/Object;
.source "SemAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DQAManager"
.end annotation


# static fields
.field private static final ACTION_DQA_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final FACE_FILE_DQA_NAME:Ljava/lang/String; = "settings_face_ext_bigdata.xml"

.field private static final FP_FILE_DQA_NAME:Ljava/lang/String; = "settings_fingerprint_ext_bigdata.xml"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDQABroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFaceBigDataNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFpBigDataNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousSavedTime:J

.field private mPreviousSentTime:J

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field final synthetic this$0:Lcom/android/server/biometrics/SemAnalyticsManager;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/SemAnalyticsManager;Landroid/content/Context;)V
    .registers 10
    .param p2, "ctx"    # Landroid/content/Context;

    .line 697
    iput-object p1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 671
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 675
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;-><init>(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mDQABroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    iput-object p2, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    .line 699
    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSentTime:J

    iput-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    .line 701
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->resetDqaData()V

    .line 703
    const-string/jumbo v0, "settings_fingerprint_ext_bigdata.xml"

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->readDqaDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "fpSavedData":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->fpParseAndUpdateMap(Ljava/lang/String;)V

    .line 706
    .end local v0    # "fpSavedData":Ljava/lang/String;
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->FACE_FEATURE_HAL:Z
    invoke-static {p1}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$500(Lcom/android/server/biometrics/SemAnalyticsManager;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 707
    const-string/jumbo v0, "settings_face_ext_bigdata.xml"

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->readDqaDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "faceSavedData":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->faceParseAndUpdateMap(Ljava/lang/String;)V

    .line 711
    .end local v0    # "faceSavedData":Ljava/lang/String;
    :cond_49
    :try_start_49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 712
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mDQABroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 715
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$700(Lcom/android/server/biometrics/SemAnalyticsManager;)Landroid/os/Handler;

    move-result-object v6

    .line 714
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_67} :catch_69

    .line 718
    nop

    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_80

    .line 716
    :catch_69
    move-exception p1

    .line 717
    .local p1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQAManager: registerBroadCastReceiver : failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService.AM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_80
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    .line 661
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->send()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    .line 661
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->fpGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    .line 661
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->faceGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private faceGetDqaDataFormatToSave()Ljava/lang/String;
    .registers 8

    .line 904
    const-string v0, ":"

    const-string v1, "BiometricService.AM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .local v2, "strBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 907
    .local v3, "formatData":Ljava/lang/String;
    :try_start_a
    iget-object v4, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 908
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 909
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_35

    .line 911
    nop

    .end local v5    # "s":Ljava/lang/String;
    goto :goto_14

    .line 914
    :cond_34
    goto :goto_4f

    .line 912
    :catch_35
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "formatDqaDataToSave: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    .end local v3    # "formatData":Ljava/lang/String;
    .local v0, "formatData":Ljava/lang/String;
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "formatDqaDataToSave: formatData = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_73
    return-object v0
.end method

.method private faceParseAndUpdateMap(Ljava/lang/String;)V
    .registers 9
    .param p1, "raw"    # Ljava/lang/String;

    .line 792
    if-eqz p1, :cond_68

    .line 794
    :try_start_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 795
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 796
    .local v2, "pos":I
    if-ltz v2, :cond_4b

    .line 797
    add-int/lit8 v3, v2, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "cnt":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 799
    .local v4, "cntInt":I
    iget-object v5, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 800
    iget-object v5, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4d

    .line 802
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v3    # "cnt":Ljava/lang/String;
    .end local v4    # "cntInt":I
    :cond_4b
    goto :goto_c

    .line 805
    :cond_4c
    goto :goto_68

    .line 803
    :catch_4d
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DQAManager.faceParseAndUpdateMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService.AM"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_68
    :goto_68
    return-void
.end method

.method private fpGetDqaDataFormatToSave()Ljava/lang/String;
    .registers 8

    .line 884
    const-string v0, ":"

    const-string v1, "BiometricService.AM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v2, "strBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 887
    .local v3, "formatData":Ljava/lang/String;
    :try_start_a
    iget-object v4, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 888
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 889
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_35

    .line 891
    nop

    .end local v5    # "s":Ljava/lang/String;
    goto :goto_14

    .line 894
    :cond_34
    goto :goto_4f

    .line 892
    :catch_35
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "formatDqaDataToSave: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .end local v3    # "formatData":Ljava/lang/String;
    .local v0, "formatData":Ljava/lang/String;
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "formatDqaDataToSave: formatData = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_73
    return-object v0
.end method

.method private fpParseAndUpdateMap(Ljava/lang/String;)V
    .registers 9
    .param p1, "raw"    # Ljava/lang/String;

    .line 774
    if-eqz p1, :cond_68

    .line 776
    :try_start_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 777
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 778
    .local v2, "pos":I
    if-ltz v2, :cond_4b

    .line 779
    add-int/lit8 v3, v2, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "cnt":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 781
    .local v4, "cntInt":I
    iget-object v5, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 782
    iget-object v5, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4d

    .line 784
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v3    # "cnt":Ljava/lang/String;
    .end local v4    # "cntInt":I
    :cond_4b
    goto :goto_c

    .line 787
    :cond_4c
    goto :goto_68

    .line 785
    :catch_4d
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DQAManager.fpParseAndUpdateMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService.AM"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_68
    :goto_68
    return-void
.end method

.method static synthetic lambda$writeDqaDataToFile$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 838
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQAManager.writeDqaData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService.AM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_1c
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 841
    .local v0, "file":Ljava/io/File;
    if-nez p0, :cond_2c

    .line 842
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_33

    .line 844
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    .line 846
    :goto_33
    return-void
.end method

.method private needToSaveBigFeatures()Z
    .registers 5

    .line 867
    iget-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    goto :goto_19

    .line 871
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 868
    :cond_19
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    .line 869
    const/4 v0, 0x1

    return v0
.end method

.method private needToSendBigFeatures()Z
    .registers 5

    .line 875
    iget-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSentTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSentTime:J

    iput-wide v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    .line 877
    const/4 v0, 0x1

    return v0

    .line 879
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private readDqaDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 853
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v2

    .line 854
    .local v2, "buffer":[B
    const-string v3, "DQAManager.readDqaDataFromFile: "

    const-string v4, "BiometricService.AM"

    if-eqz v2, :cond_33

    .line 856
    :try_start_15
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-object v0, v5

    .line 859
    goto :goto_33

    .line 857
    :catch_1c
    move-exception v5

    .line 858
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$800()Z

    move-result v5

    if-eqz v5, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_4b
    return-object v0
.end method

.method private resetDqaData()V
    .registers 4

    .line 811
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FPIS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPIF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPGT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPMV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->FACE_FEATURE_HAL:Z
    invoke-static {v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$500(Lcom/android/server/biometrics/SemAnalyticsManager;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 824
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAIS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAIF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FATO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_99
    return-void
.end method

.method private send()V
    .registers 6

    .line 753
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 754
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 755
    .local v2, "c":I
    if-lez v2, :cond_2b

    .line 756
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->sendFingerprintBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "c":I
    :cond_2b
    goto :goto_a

    .line 759
    :cond_2c
    const-string/jumbo v0, "settings_fingerprint_ext_bigdata.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->FACE_FEATURE_HAL:Z
    invoke-static {v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$500(Lcom/android/server/biometrics/SemAnalyticsManager;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 762
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 763
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 764
    .local v3, "c":I
    if-lez v3, :cond_66

    .line 765
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "c":I
    :cond_66
    goto :goto_45

    .line 768
    :cond_67
    const-string/jumbo v0, "settings_face_ext_bigdata.xml"

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->resetDqaData()V

    .line 771
    return-void
.end method

.method private sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 946
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x0

    .line 947
    .local v13, "type":I
    const-string v14, "Camera"

    .line 948
    .local v14, "compID":Ljava/lang/String;
    const-string/jumbo v15, "ph"

    .line 949
    .local v15, "hitType":Ljava/lang/String;
    const-string v16, "0.0"

    .line 950
    .local v16, "compVer":Ljava/lang/String;
    const-string/jumbo v17, "sec"

    .line 951
    .local v17, "compManuFacture":Ljava/lang/String;
    const-string v18, ""

    .line 952
    .local v18, "dev_customDataSet":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 953
    .local v19, "basic_customDataSet":Ljava/lang/String;
    const-string v20, ""

    .line 955
    .local v20, "pri_customDataSet":Ljava/lang/String;
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$800()Z

    move-result v1

    const-string v2, "BiometricService.AM"

    if-eqz v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DQAManager.sendFaceBigData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_55
    iget-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_65

    .line 958
    iget-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/SemHqmManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 960
    :cond_65
    iget-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_7c

    .line 961
    move v2, v13

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_81

    .line 964
    :cond_7c
    const-string v1, "DQAManager.sendFaceBigData: SemHqmManager is null!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_81
    return-void
.end method

.method private sendFingerprintBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x0

    .line 924
    .local v13, "type":I
    const-string v14, "BFS"

    .line 925
    .local v14, "compID":Ljava/lang/String;
    const-string/jumbo v15, "ph"

    .line 926
    .local v15, "hitType":Ljava/lang/String;
    const-string v16, "0.0"

    .line 927
    .local v16, "compVer":Ljava/lang/String;
    const-string/jumbo v17, "sec"

    .line 928
    .local v17, "compManuFacture":Ljava/lang/String;
    const-string v18, ""

    .line 929
    .local v18, "dev_customDataSet":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 930
    .local v19, "basic_customDataSet":Ljava/lang/String;
    const-string v20, ""

    .line 932
    .local v20, "pri_customDataSet":Ljava/lang/String;
    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$800()Z

    move-result v1

    const-string v2, "BiometricService.AM"

    if-eqz v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DQAManager.sendFingerprintBigData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_55
    iget-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_65

    .line 935
    iget-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/SemHqmManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 937
    :cond_65
    iget-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_7c

    .line 938
    move v2, v13

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_81

    .line 941
    :cond_7c
    const-string v1, "DQAManager.sendFingerprintBigData: SemHqmManager is null!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :goto_81
    return-void
.end method

.method private writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 837
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemAnalyticsManager$DQAManager$3sm9TGtU1vaep30DlNweM7dPuT0;

    invoke-direct {v1, p2, p1}, Lcom/android/server/biometrics/-$$Lambda$SemAnalyticsManager$DQAManager$3sm9TGtU1vaep30DlNweM7dPuT0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 847
    return-void
.end method


# virtual methods
.method faceHandleDqaData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 6
    .param p1, "ed"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 737
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 738
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 739
    .local v0, "cnt":I
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->needToSendBigFeatures()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 741
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->send()V

    goto :goto_3f

    .line 742
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->needToSaveBigFeatures()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 743
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->faceGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings_face_ext_bigdata.xml"

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .end local v0    # "cnt":I
    :cond_3f
    :goto_3f
    goto :goto_47

    .line 746
    :cond_40
    iget-object v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_47
    return-void
.end method

.method fpHandleDqaData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 6
    .param p1, "ed"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 723
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 724
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 725
    .local v0, "cnt":I
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->needToSendBigFeatures()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 727
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->send()V

    goto :goto_3f

    .line 728
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->needToSaveBigFeatures()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 729
    invoke-direct {p0}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->fpGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint_ext_bigdata.xml"

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .end local v0    # "cnt":I
    :cond_3f
    :goto_3f
    goto :goto_47

    .line 732
    :cond_40
    iget-object v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->sendFingerprintBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_47
    return-void
.end method
