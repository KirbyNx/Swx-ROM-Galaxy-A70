.class public final Lcom/att/iqi/IQIConcierge;
.super Ljava/lang/Object;
.source "IQIConcierge.java"


# static fields
.field private static final ACTION_MCC_MNC_VALIDATION_STATE_CHANGED:Ljava/lang/String; = "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

.field private static final IQI_MCCMNC_RESOURCE:Ljava/lang/String; = "/mccmnc.xml"

.field private static final PERMISSION_MODIFY_MNC_MCC_VALIDATION_STATE:Ljava/lang/String; = "com.att.iqi.permission.MODIFY_MNC_MCC_VALIDATION_STATE"

.field private static final VERSION:Ljava/lang/String; = "6.0-guam"

.field private static sInstance:Lcom/att/iqi/IQIConcierge; = null

.field private static final sMCCMNCs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMccMncValidationDisabled:Z = false

.field private static sSimDisabled:Z = false

.field private static final sXmlAttributeMccName:Ljava/lang/String; = "mcc"

.field private static final sXmlAttributeMncName:Ljava/lang/String; = "mnc"

.field private static final sXmlTagName:Ljava/lang/String; = "carrier"


# instance fields
.field private mClient:Lcom/att/iqi/lib/IQIManager;

.field private final mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mMncMccValidationStateChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/att/iqi/IQIConcierge;->sSimDisabled:Z

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/att/iqi/IQIConcierge;->sMccMncValidationDisabled:Z

    .line 136
    invoke-static {}, Lcom/att/iqi/IQIConcierge;->createNetIdPairList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIConcierge;->sMCCMNCs:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "aContext"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 84
    new-instance v0, Lcom/att/iqi/IQIConcierge$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIConcierge$1;-><init>(Lcom/att/iqi/IQIConcierge;)V

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mMncMccValidationStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/att/iqi/IQIConcierge;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    .line 63
    if-eqz v0, :cond_3e

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/att/iqi/IQIConcierge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIConcierge;->mMncMccValidationStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 65
    const-string v4, "com.att.iqi.permission.MODIFY_MNC_MCC_VALIDATION_STATE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 67
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/-$$Lambda$IQIConcierge$DSJsg3vO6R4cIJjXM8nrs0SoM4c;

    invoke-direct {v2, p0}, Lcom/att/iqi/-$$Lambda$IQIConcierge$DSJsg3vO6R4cIJjXM8nrs0SoM4c;-><init>(Lcom/att/iqi/IQIConcierge;)V

    invoke-virtual {v1, v2}, Lcom/att/iqi/libs/PreferenceStore;->registerPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V

    .line 72
    invoke-direct {p0}, Lcom/att/iqi/IQIConcierge;->updateMccMncValidationStateFromPrefStore()V

    .line 73
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_49

    .line 74
    :cond_3e
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "Failed to get IQIManager"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    .line 76
    :cond_49
    :goto_49
    return-void
.end method

.method private static createNetIdPairList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 142
    .local v1, "xmlFactoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 145
    .local v2, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    const-class v3, Lcom/att/iqi/IQIConcierge;

    const-string v4, "/mccmnc.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 146
    .local v3, "xmlResource":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    invoke-static {v2, v0}, Lcom/att/iqi/IQIConcierge;->parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 148
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_1f} :catch_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1f} :catch_2d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_20

    .end local v1    # "xmlFactoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "xmlResource":Ljava/io/InputStream;
    goto :goto_46

    .line 153
    :catch_20
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "XML resource reader failure"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_47

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2d
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "IQI XML resource not found"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_46

    .line 149
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v1

    .line 150
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "failed to start XML parser"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    .line 155
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_46
    :goto_46
    nop

    .line 157
    :cond_47
    :goto_47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static enableDebugLogs(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 103
    invoke-static {p0}, Lcom/att/iqi/LogUtil;->enableLogging(Z)V

    .line 104
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 107
    const-string v0, "6.0-guam"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "aContext"    # Landroid/content/Context;

    .line 97
    sget-object v0, Lcom/att/iqi/IQIConcierge;->sInstance:Lcom/att/iqi/IQIConcierge;

    if-nez v0, :cond_b

    .line 98
    new-instance v0, Lcom/att/iqi/IQIConcierge;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIConcierge;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/att/iqi/IQIConcierge;->sInstance:Lcom/att/iqi/IQIConcierge;

    .line 100
    :cond_b
    return-void
.end method

.method public static isServiceBindingAllowed()Z
    .registers 1

    .line 111
    sget-boolean v0, Lcom/att/iqi/IQIConcierge;->sMccMncValidationDisabled:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/att/iqi/IQIConcierge;->sSimDisabled:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static matchesNetId(Landroid/telephony/SubscriptionInfo;)Z
    .registers 8
    .param p0, "si"    # Landroid/telephony/SubscriptionInfo;

    .line 182
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "mnc":Ljava/lang/String;
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sub netId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    .line 186
    :cond_2b
    sget-object v2, Lcom/att/iqi/IQIConcierge;->sMCCMNCs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 187
    .local v4, "mccmnc":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_65

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config netId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    .line 188
    :cond_65
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 189
    const/4 v2, 0x1

    return v2

    .line 191
    .end local v4    # "mccmnc":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7b
    goto :goto_31

    .line 193
    :cond_7c
    sget-object v2, Lcom/att/iqi/IQIConcierge;->sMCCMNCs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    return v2
.end method

.method private static parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .registers 8
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 164
    .local v0, "event":I
    :goto_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5f

    .line 165
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5a

    .line 166
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "tagName":Ljava/lang/String;
    if-eqz v1, :cond_5a

    const-string v2, "carrier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 168
    new-instance v2, Landroid/util/Pair;

    .line 169
    const/4 v3, 0x0

    const-string/jumbo v4, "mcc"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    const-string/jumbo v5, "mnc"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .local v2, "mccmnc":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read tag in XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    .line 174
    :cond_57
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v2    # "mccmnc":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 179
    :cond_5f
    return-void
.end method

.method private updateMccMncValidationStateFromPrefStore()V
    .registers 4

    .line 79
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v0

    .line 80
    const-string v1, "disable_mcc_mnc_validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/att/iqi/IQIConcierge;->sMccMncValidationDisabled:Z

    .line 81
    return-void
.end method

.method public static updateSubscriptions(Landroid/telephony/SubscriptionManager;)Z
    .registers 6
    .param p0, "sm"    # Landroid/telephony/SubscriptionManager;

    .line 115
    if-eqz p0, :cond_24

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "simDisabled":Z
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "sis":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_22

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 120
    .local v3, "si":Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/att/iqi/IQIConcierge;->matchesNetId(Landroid/telephony/SubscriptionInfo;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 121
    const/4 v0, 0x0

    .line 122
    goto :goto_22

    .line 124
    .end local v3    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_21
    goto :goto_d

    .line 126
    :cond_22
    :goto_22
    sput-boolean v0, Lcom/att/iqi/IQIConcierge;->sSimDisabled:Z

    .line 128
    .end local v0    # "simDisabled":Z
    .end local v1    # "sis":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_24
    invoke-static {}, Lcom/att/iqi/IQIConcierge;->isServiceBindingAllowed()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic lambda$new$0$IQIConcierge(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 68
    const-string v0, "disable_mcc_mnc_validation"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    invoke-direct {p0}, Lcom/att/iqi/IQIConcierge;->updateMccMncValidationStateFromPrefStore()V

    .line 71
    :cond_b
    return-void
.end method
