.class public Lcom/android/server/integrity/IntegrityFileManager;
.super Ljava/lang/Object;
.source "IntegrityFileManager.java"


# static fields
.field private static final INDEXING_FILE:Ljava/lang/String; = "indexing"

.field private static final METADATA_FILE:Ljava/lang/String; = "metadata"

.field private static final RULES_FILE:Ljava/lang/String; = "rules"

.field private static final RULES_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "IntegrityFileManager"

.field private static sInstance:Lcom/android/server/integrity/IntegrityFileManager;


# instance fields
.field private final mDataDir:Ljava/io/File;

.field private mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

.field private mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

.field private final mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

.field private final mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

.field private final mRulesDir:Ljava/io/File;

.field private final mStagingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 80
    new-instance v0, Lcom/android/server/integrity/parser/RuleBinaryParser;

    invoke-direct {v0}, Lcom/android/server/integrity/parser/RuleBinaryParser;-><init>()V

    new-instance v1, Lcom/android/server/integrity/serializer/RuleBinarySerializer;

    invoke-direct {v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;-><init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V
    .registers 9
    .param p1, "ruleParser"    # Lcom/android/server/integrity/parser/RuleParser;
    .param p2, "ruleSerializer"    # Lcom/android/server/integrity/serializer/RuleSerializer;
    .param p3, "dataDir"    # Ljava/io/File;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 89
    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 90
    iput-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    .line 92
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "integrity_rules"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 93
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "integrity_staging"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "IntegrityFileManager"

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_32

    .line 96
    :cond_2d
    const-string v0, "Error creating staging and rules directory"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_32
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v3, "metadata"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "metadataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 102
    :try_start_42
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_5b

    .line 103
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_47
    invoke-static {v2}, Lcom/android/server/integrity/parser/RuleMetadataParser;->parse(Ljava/io/InputStream;)Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_51

    .line 104
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_5b

    .line 106
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_61

    .line 102
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catchall_51
    move-exception v3

    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v4

    :try_start_57
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "metadataFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    .end local p1    # "ruleParser":Lcom/android/server/integrity/parser/RuleParser;
    .end local p2    # "ruleSerializer":Lcom/android/server/integrity/serializer/RuleSerializer;
    .end local p3    # "dataDir":Ljava/io/File;
    :goto_5a
    throw v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5b} :catch_5b

    .line 104
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "metadataFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    .restart local p1    # "ruleParser":Lcom/android/server/integrity/parser/RuleParser;
    .restart local p2    # "ruleSerializer":Lcom/android/server/integrity/serializer/RuleSerializer;
    .restart local p3    # "dataDir":Ljava/io/File;
    :catch_5b
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading metadata file."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/integrity/IntegrityFileManager;
    .registers 2

    const-class v0, Lcom/android/server/integrity/IntegrityFileManager;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    if-nez v1, :cond_e

    .line 74
    new-instance v1, Lcom/android/server/integrity/IntegrityFileManager;

    invoke-direct {v1}, Lcom/android/server/integrity/IntegrityFileManager;-><init>()V

    sput-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    .line 76
    :cond_e
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private switchStagingRulesDir()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    const-string/jumbo v3, "temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v1, "tmpDir":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 186
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 187
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 191
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v3, :cond_3a

    aget-object v5, v2, v4

    .line 192
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 191
    nop

    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 194
    .end local v1    # "tmpDir":Ljava/io/File;
    :cond_3a
    monitor-exit v0

    .line 195
    return-void

    .line 188
    .restart local v1    # "tmpDir":Ljava/io/File;
    :cond_3c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error switching staging/rules directory"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    throw v2

    .line 194
    .end local v1    # "tmpDir":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private updateRuleIndexingController()V
    .registers 5

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v0, "ruleIndexingFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 200
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_2a

    .line 201
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_15
    new-instance v2, Lcom/android/server/integrity/parser/RuleIndexingController;

    invoke-direct {v2, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 202
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_2a

    .line 204
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_32

    .line 200
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v3

    :try_start_26
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ruleIndexingFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    :goto_29
    throw v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2a

    .line 202
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "ruleIndexingFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    :catch_2a
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IntegrityFileManager"

    const-string v3, "Error parsing the rule indexing file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    return-void
.end method

.method private writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "ruleProvider"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/android/server/integrity/model/RuleMetadata;

    invoke-direct {v0, p2, p3}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 212
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "metadata"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v0, "metadataFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    invoke-static {v2, v1}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serialize(Lcom/android/server/integrity/model/RuleMetadata;Ljava/io/OutputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1d

    .line 216
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 217
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    return-void

    .line 214
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v2
.end method


# virtual methods
.method public initialized()Z
    .registers 4

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "rules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "metadata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 118
    :goto_33
    return v0
.end method

.method public readMetadata()Lcom/android/server/integrity/model/RuleMetadata;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    return-object v0
.end method

.method public readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .registers 7
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2f

    .line 158
    .local v1, "ruleReadingIndexes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    if-eqz p1, :cond_19

    .line 160
    :try_start_9
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

    .line 161
    invoke-virtual {v2, p1}, Lcom/android/server/integrity/parser/RuleIndexingController;->identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_11
    .catchall {:try_start_9 .. :try_end_f} :catchall_2f

    move-object v1, v2

    .line 164
    goto :goto_19

    .line 162
    :catch_11
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v3, "IntegrityFileManager"

    const-string v4, "Error identifying the rule indexes. Trying unindexed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_19
    :goto_19
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v4, "rules"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v2, "ruleFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 170
    invoke-static {v2}, Lcom/android/server/integrity/parser/RandomAccessObject;->ofFile(Ljava/io/File;)Lcom/android/server/integrity/parser/RandomAccessObject;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/server/integrity/parser/RuleParser;->parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    monitor-exit v0

    return-object v3

    .line 172
    .end local v1    # "ruleReadingIndexes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    .end local v2    # "ruleFile":Ljava/io/File;
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "ruleProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    .line 127
    .local p3, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/integrity/IntegrityFileManager;->writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 131
    goto :goto_e

    .line 128
    :catch_6
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IntegrityFileManager"

    const-string v2, "Error writing metadata."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string/jumbo v3, "rules"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    .local v0, "ruleFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1d
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string/jumbo v4, "indexing"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_4c

    .line 137
    .local v1, "indexingFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 138
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    .line 137
    invoke-interface {v2, p3, v3, v0, v1}, Lcom/android/server/integrity/serializer/RuleSerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_42

    .line 139
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4c

    .end local v1    # "indexingFileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 141
    .end local v0    # "ruleFileOutputStream":Ljava/io/FileOutputStream;
    invoke-direct {p0}, Lcom/android/server/integrity/IntegrityFileManager;->switchStagingRulesDir()V

    .line 144
    invoke-direct {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    .line 145
    return-void

    .line 133
    .restart local v0    # "ruleFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "indexingFileOutputStream":Ljava/io/FileOutputStream;
    :catchall_42
    move-exception v2

    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v3

    :try_start_48
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ruleFileOutputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    .end local p1    # "version":Ljava/lang/String;
    .end local p2    # "ruleProvider":Ljava/lang/String;
    .end local p3    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    :goto_4b
    throw v2
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    .end local v1    # "indexingFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "ruleFileOutputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/integrity/IntegrityFileManager;
    .restart local p1    # "version":Ljava/lang/String;
    .restart local p2    # "ruleProvider":Ljava/lang/String;
    .restart local p3    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    :catchall_4c
    move-exception v1

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw v1
.end method
