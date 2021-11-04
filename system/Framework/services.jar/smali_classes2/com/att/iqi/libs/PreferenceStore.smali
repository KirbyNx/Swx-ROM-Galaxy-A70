.class public Lcom/att/iqi/libs/PreferenceStore;
.super Ljava/lang/Object;
.source "PreferenceStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final IQI_PREF_FILE:Ljava/lang/String; = "att_prefs.xml"

.field public static final PREF_DISABLE_MCC_MNC_VALIDATION:Ljava/lang/String; = "disable_mcc_mnc_validation"

.field public static final PREF_LOGS_ENABLED:Ljava/lang/String; = "log_enabled"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/att/iqi/libs/PreferenceStore;

.field private static sPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoaded:Z

.field private mPreferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 80
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "disable_mcc_mnc_validation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    const-string/jumbo v2, "log_enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mLoaded:Z

    .line 88
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$mkb8sHaJ-lzqONsAyKJzwy1XMqk;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$mkb8sHaJ-lzqONsAyKJzwy1XMqk;-><init>(Lcom/att/iqi/libs/PreferenceStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method private awaitLoadedLocked()V
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mLoaded:Z

    if-nez v0, :cond_10

    .line 250
    :goto_4
    iget-boolean v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mLoaded:Z

    if-nez v0, :cond_10

    .line 252
    :try_start_8
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 253
    :catch_e
    move-exception v0

    .line 255
    :goto_f
    goto :goto_4

    .line 258
    :cond_10
    return-void
.end method

.method private createPrefStoreLocked(Ljava/io/File;)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;

    .line 101
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 102
    .local v0, "destination":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 104
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 105
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 106
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "prefMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v4, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 111
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_30

    .line 114
    :cond_4b
    const-string/jumbo v4, "prefs"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 115
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 116
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_58

    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "prefMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_64

    .line 117
    :catchall_58
    move-exception v2

    .line 118
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_59
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 119
    const-string v3, "Exception thrown while creating pref file"

    invoke-static {v3, v2}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_69

    .line 122
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_64
    :goto_64
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_69
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    throw v2
.end method

.method public static getInstance()Lcom/att/iqi/libs/PreferenceStore;
    .registers 2

    .line 92
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    if-nez v1, :cond_e

    .line 94
    new-instance v1, Lcom/att/iqi/libs/PreferenceStore;

    invoke-direct {v1}, Lcom/att/iqi/libs/PreferenceStore;-><init>()V

    sput-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    .line 96
    :cond_e
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getOrCreatePreferenceStoreLocked()Ljava/io/File;
    .registers 5

    .line 127
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "att_prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v0, "prefFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 130
    invoke-direct {p0, v0}, Lcom/att/iqi/libs/PreferenceStore;->createPrefStoreLocked(Ljava/io/File;)V

    .line 132
    :cond_1c
    return-object v0
.end method

.method public static synthetic lambda$mkb8sHaJ-lzqONsAyKJzwy1XMqk(Lcom/att/iqi/libs/PreferenceStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->loadPrefs()V

    return-void
.end method

.method static synthetic lambda$setValue$1(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .registers 2
    .param p0, "listener"    # Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    .param p1, "K"    # Ljava/lang/String;

    .line 222
    invoke-interface {p0, p1}, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;->onPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method

.method private loadPrefs()V
    .registers 12

    .line 136
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->getOrCreatePreferenceStoreLocked()Ljava/io/File;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8d

    .line 138
    .local v1, "prefFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 141
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 143
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3

    .line 144
    .local v3, "prefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    if-eqz v3, :cond_5f

    .line 145
    const-string v4, "disable_mcc_mnc_validation"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 146
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2f

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2f

    move v5, v7

    goto :goto_30

    :cond_2f
    move v5, v6

    .line 147
    .local v5, "mcc_mnc":Z
    :goto_30
    sget-object v8, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    const-string v9, "disable_mcc_mnc_validation"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v8, "log_enabled"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 150
    instance-of v8, v4, Ljava/lang/Boolean;

    if-eqz v8, :cond_51

    move-object v8, v4

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_51

    move v6, v7

    .line 151
    .local v6, "logging":Z
    :cond_51
    sget-object v8, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    const-string/jumbo v9, "log_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iput-boolean v7, p0, Lcom/att/iqi/libs/PreferenceStore;->mLoaded:Z
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_67

    .line 159
    .end local v3    # "prefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "mcc_mnc":Z
    .end local v6    # "logging":Z
    :cond_5f
    if-eqz v2, :cond_64

    :try_start_61
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    :cond_64
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_8d

    goto :goto_7a

    .line 154
    :catchall_67
    move-exception v3

    .line 155
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_68
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 156
    const-string v4, "Exception thrown while reading preferences"

    invoke-static {v4, v3}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_80

    .line 159
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_73
    if-eqz v2, :cond_78

    :try_start_75
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    :cond_78
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    :goto_7a
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 161
    nop

    .line 162
    .end local v1    # "prefFile":Ljava/io/File;
    .end local v2    # "in":Ljava/io/FileInputStream;
    monitor-exit v0

    .line 163
    return-void

    .line 159
    .restart local v1    # "prefFile":Ljava/io/File;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_80
    move-exception v3

    if-eqz v2, :cond_86

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    :cond_86
    sget-object v4, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 161
    nop

    .end local p0    # "this":Lcom/att/iqi/libs/PreferenceStore;
    throw v3

    .line 162
    .end local v1    # "prefFile":Ljava/io/File;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/att/iqi/libs/PreferenceStore;
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 23
    .param p1, "K"    # Ljava/lang/String;
    .param p2, "V"    # Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 178
    :try_start_4
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_da

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "prefIndx":I
    :try_start_8
    sget-object v4, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 185
    .local v4, "prefMapSize":I
    sget-object v5, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 186
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_2f

    .line 187
    :cond_2b
    nop

    .end local v6    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_18

    .line 190
    :cond_2f
    :goto_2f
    if-ne v0, v4, :cond_47

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preference not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    .line 192
    monitor-exit v3

    return-void

    .line 197
    :cond_47
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_d1

    .line 198
    const-string v5, "boolean"

    .line 199
    .local v5, "tagName":Ljava/lang/String;
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5a

    const-string/jumbo v6, "true"

    goto :goto_5c

    :cond_5a
    const-string v6, "false"

    .line 204
    .local v6, "value":Ljava/lang/String;
    :goto_5c
    invoke-direct/range {p0 .. p0}, Lcom/att/iqi/libs/PreferenceStore;->getOrCreatePreferenceStoreLocked()Ljava/io/File;

    move-result-object v7

    .line 205
    .local v7, "file":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 206
    .local v8, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 207
    .local v9, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v9, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 209
    .local v10, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v10, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 210
    .local v11, "nodes":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string/jumbo v13, "value"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 211
    .local v12, "nodeValue":Lorg/w3c/dom/Node;
    invoke-interface {v12, v6}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    .line 214
    .local v13, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v14, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 215
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    new-instance v15, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v15, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 216
    .local v15, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v13, v15, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 219
    move/from16 v16, v0

    .end local v0    # "prefIndx":I
    .local v16, "prefIndx":I
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    move-object/from16 v18, v17

    .line 222
    .local v18, "listener":Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    move-object/from16 v17, v0

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;

    move/from16 v19, v4

    move-object/from16 v4, v18

    .end local v18    # "listener":Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    .local v4, "listener":Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    .local v19, "prefMapSize":I
    invoke-direct {v2, v4, v1}, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;-><init>(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    move-object/from16 v2, p0

    move-object/from16 v0, v17

    move/from16 v4, v19

    .end local v4    # "listener":Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    goto :goto_a6

    .line 221
    .end local v19    # "prefMapSize":I
    .local v4, "prefMapSize":I
    :cond_cd
    move/from16 v19, v4

    .line 224
    .end local v4    # "prefMapSize":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "nodes":Lorg/w3c/dom/Node;
    .end local v12    # "nodeValue":Lorg/w3c/dom/Node;
    .end local v13    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v15    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v16    # "prefIndx":I
    monitor-exit v3

    .line 229
    goto :goto_e6

    .line 202
    .restart local v0    # "prefIndx":I
    .restart local v4    # "prefMapSize":I
    :cond_d1
    move/from16 v16, v0

    move/from16 v19, v4

    .end local v0    # "prefIndx":I
    .end local v4    # "prefMapSize":I
    .restart local v16    # "prefIndx":I
    .restart local v19    # "prefMapSize":I
    monitor-exit v3

    return-void

    .line 224
    .end local v16    # "prefIndx":I
    .end local v19    # "prefMapSize":I
    :catchall_d7
    move-exception v0

    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_8 .. :try_end_d9} :catchall_d7

    .end local p0    # "this":Lcom/att/iqi/libs/PreferenceStore;
    .end local p1    # "K":Ljava/lang/String;
    .end local p2    # "V":Ljava/lang/Object;
    :try_start_d9
    throw v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    .line 225
    .restart local p0    # "this":Lcom/att/iqi/libs/PreferenceStore;
    .restart local p1    # "K":Ljava/lang/String;
    .restart local p2    # "V":Ljava/lang/Object;
    :catchall_da
    move-exception v0

    .line 226
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 227
    const-string v2, "An exception was thrown while trying to update preference"

    invoke-static {v2, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_e6
    :goto_e6
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "K"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 233
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->awaitLoadedLocked()V

    .line 235
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 236
    .local v1, "boolValue":Ljava/lang/Boolean;
    if-nez v1, :cond_12

    move v2, p2

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_16
    monitor-exit v0

    return v2

    .line 237
    .end local v1    # "boolValue":Ljava/lang/Boolean;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public synthetic lambda$setBoolean$0$PreferenceStore(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "K"    # Ljava/lang/String;
    .param p2, "V"    # Z

    .line 171
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/att/iqi/libs/PreferenceStore;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public registerPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    .line 241
    iget-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "K"    # Ljava/lang/String;
    .param p2, "V"    # Z

    .line 169
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 171
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_17
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public unregisterPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    .line 245
    iget-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method
