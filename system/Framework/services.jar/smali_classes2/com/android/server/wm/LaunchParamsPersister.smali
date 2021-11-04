.class Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;,
        Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
    }
.end annotation


# static fields
.field private static final ESCAPED_COMPONENT_SEPARATOR:C = '_'

.field private static final LAUNCH_PARAMS_DIRNAME:Ljava/lang/String; = "launch_params"

.field private static final LAUNCH_PARAMS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final ORIGINAL_COMPONENT_SEPARATOR:C = '/'

.field private static final TAG:Ljava/lang/String; = "LaunchParamsPersister"

.field private static final TAG_LAUNCH_PARAMS:Ljava/lang/String; = "launch_params"


# instance fields
.field private final mLaunchParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageList:Lcom/android/server/pm/PackageList;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mUserFolderGetter:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 4
    .param p1, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 112
    sget-object v0, Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;Ljava/util/function/IntFunction;)V

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;Ljava/util/function/IntFunction;)V
    .registers 5
    .param p1, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityStackSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p3, "userFolderGetter":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 119
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 120
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 121
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/LaunchParamsPersister;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/LaunchParamsPersister;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Landroid/content/ComponentName;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "launchParamAffinity"    # Ljava/lang/String;

    .line 312
    if-nez p2, :cond_3

    .line 313
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 316
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method private getLaunchParamFolder(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 420
    .local v0, "userFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "launch_params"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 7
    .param p1, "launchParamFolder"    # Ljava/io/File;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 413
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 414
    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "componentNameString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "affinity"    # Ljava/lang/String;

    .line 315
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$removeRecordForPackage$2(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 405
    # getter for: Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->access$600(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadLaunchParams(I)V
    .registers 23
    .param p1, "userId"    # I

    .line 137
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 138
    .local v3, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 139
    .local v4, "launchParamsFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v5, "LaunchParamsPersister"

    if-nez v0, :cond_2b

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t find launch param folder for user "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 144
    :cond_2b
    new-instance v0, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    .line 146
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 147
    .local v7, "paramsFiles":[Ljava/io/File;
    new-instance v0, Landroid/util/ArrayMap;

    array-length v8, v7

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 149
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_4a
    if-ge v11, v9, :cond_1c6

    aget-object v13, v7, v11

    .line 152
    .local v13, "paramsFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_74

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not a file."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_1b4

    .line 156
    :cond_74
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected params file name: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_1b4

    .line 161
    :cond_a3
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, "paramsFileName":Ljava/lang/String;
    nop

    .line 164
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v15, v16, v15

    .line 162
    invoke-virtual {v14, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x5f

    const/16 v12, 0x2f

    .line 165
    invoke-virtual {v15, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "componentNameString":Ljava/lang/String;
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 168
    .local v12, "name":Landroid/content/ComponentName;
    if-nez v12, :cond_e3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected file name: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_1b4

    .line 174
    :cond_e3
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f8

    .line 177
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_1b4

    .line 181
    :cond_f8
    const/4 v15, 0x0

    .line 183
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_f9
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0

    .line 184
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    .line 185
    .local v0, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 186
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_111} :catch_191
    .catchall {:try_start_f9 .. :try_end_111} :catchall_189

    .line 188
    :goto_111
    move-object/from16 v18, v4

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .local v18, "launchParamsFolder":Ljava/io/File;
    :try_start_113
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_117} :catch_183
    .catchall {:try_start_113 .. :try_end_117} :catchall_17d

    move/from16 v17, v4

    move-object/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v17, "event":I
    .local v19, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eq v4, v6, :cond_170

    const/4 v4, 0x3

    move/from16 v6, v17

    .end local v17    # "event":I
    .local v6, "event":I
    if-eq v6, v4, :cond_16b

    .line 190
    const/4 v4, 0x2

    if-eq v6, v4, :cond_12b

    .line 191
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    goto :goto_111

    .line 194
    :cond_12b
    :try_start_12b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "tagName":Ljava/lang/String;
    move/from16 v17, v6

    .end local v6    # "event":I
    .restart local v17    # "event":I
    const-string/jumbo v6, "launch_params"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_157

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_13f} :catch_167
    .catchall {:try_start_12b .. :try_end_13f} :catchall_163

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v20, "paramsFiles":[Ljava/io/File;
    :try_start_141
    const-string v7, "Unexpected tag name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_111

    .line 200
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_157
    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    invoke-virtual {v0, v13, v2}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 201
    .end local v4    # "tagName":Ljava/lang/String;
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_111

    .line 210
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "event":I
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_163
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_1c2

    .line 206
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_167
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_198

    .line 188
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "event":I
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_16b
    move/from16 v17, v6

    move-object/from16 v20, v7

    .end local v6    # "event":I
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v17    # "event":I
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_172

    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_170
    move-object/from16 v20, v7

    .line 203
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_172
    invoke-virtual {v8, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v4, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {v1, v12, v4}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_17a} :catch_17b
    .catchall {:try_start_141 .. :try_end_17a} :catchall_1c1

    .line 210
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "event":I
    goto :goto_1b0

    .line 206
    :catch_17b
    move-exception v0

    goto :goto_198

    .line 210
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_17d
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_1c2

    .line 206
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_183
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_198

    .line 210
    .end local v18    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v4, "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_189
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_1c2

    .line 206
    .end local v18    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_191
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 207
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_198
    :try_start_198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore launch params for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1af
    .catchall {:try_start_198 .. :try_end_1af} :catchall_1c1

    .line 210
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b0
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    nop

    .line 151
    .end local v10    # "componentNameString":Ljava/lang/String;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "paramsFile":Ljava/io/File;
    .end local v14    # "paramsFileName":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :goto_1b4
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    const/4 v10, 0x0

    goto/16 :goto_4a

    .line 210
    .restart local v10    # "componentNameString":Ljava/lang/String;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v13    # "paramsFile":Ljava/io/File;
    .restart local v14    # "paramsFileName":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catchall_1c1
    move-exception v0

    :goto_1c2
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    throw v0

    .line 214
    .end local v10    # "componentNameString":Ljava/lang/String;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "paramsFile":Ljava/io/File;
    .end local v14    # "paramsFileName":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_1c6
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1de

    .line 215
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 217
    :cond_1de
    return-void
.end method

.method private saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "params"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 247
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 248
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 250
    iget-object v1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 251
    .local v1, "changed":Z
    iget-object v3, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 253
    iget v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v5

    :goto_24
    or-int/2addr v1, v3

    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    iput v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 258
    iget v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_36

    move v5, v2

    :cond_36
    or-int/2addr v1, v5

    .line 259
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 286
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_55

    .line 287
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 288
    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_62

    .line 295
    :cond_55
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 296
    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 299
    :goto_62
    iget-object v2, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 300
    .local v2, "launchParamAffinity":Ljava/lang/String;
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 301
    iput-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 303
    if-eqz v1, :cond_75

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 307
    :cond_75
    return v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 425
    const-string/jumbo v0, "mLaunchParamsPersister"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    const-string v0, "    "

    .line 427
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 428
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 429
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 431
    .local v3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_3d
    if-ltz v4, :cond_73

    .line 432
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 433
    .local v5, "name":Landroid/content/ComponentName;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    .end local v5    # "name":Landroid/content/ComponentName;
    add-int/lit8 v4, v4, -0x1

    goto :goto_3d

    .line 427
    .end local v2    # "userId":I
    .end local v3    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v4    # "j":I
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 437
    .end local v1    # "i":I
    :cond_76
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 438
    return-void
.end method

.method getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 19
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 320
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_c

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_e

    :cond_c
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 321
    .local v4, "name":Landroid/content/ComponentName;
    :goto_e
    if-eqz v1, :cond_13

    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_15

    :cond_13
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 323
    .local v5, "userId":I
    :goto_15
    if-eqz v1, :cond_1a

    .line 324
    iget-object v6, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .local v6, "windowLayoutAffinity":Ljava/lang/String;
    goto :goto_25

    .line 326
    .end local v6    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_1a
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 327
    .local v6, "layout":Landroid/content/pm/ActivityInfo$WindowLayout;
    if-nez v6, :cond_22

    const/4 v7, 0x0

    goto :goto_24

    :cond_22
    iget-object v7, v6, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_24
    move-object v6, v7

    .line 330
    .local v6, "windowLayoutAffinity":Ljava/lang/String;
    :goto_25
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 331
    iget-object v7, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 332
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    if-nez v7, :cond_33

    .line 333
    return-void

    .line 337
    :cond_33
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 340
    .local v8, "persistableParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    if-eqz v6, :cond_73

    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 341
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_73

    .line 342
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 343
    .local v9, "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4c
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_73

    .line 344
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 345
    .local v11, "candidate":Landroid/content/ComponentName;
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 346
    .local v12, "candidateParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    if-nez v12, :cond_61

    .line 347
    goto :goto_6c

    .line 350
    :cond_61
    if-eqz v8, :cond_6b

    iget-wide v13, v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v1, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v1, v13, v1

    if-lez v1, :cond_6c

    .line 352
    :cond_6b
    move-object v8, v12

    .line 343
    .end local v11    # "candidate":Landroid/content/ComponentName;
    .end local v12    # "candidateParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    :cond_6c
    :goto_6c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_4c

    .line 357
    .end local v9    # "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v10    # "i":I
    :cond_73
    if-nez v8, :cond_76

    .line 358
    return-void

    .line 361
    :cond_76
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 363
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_88

    .line 366
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 368
    :cond_88
    iget v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 369
    iget-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    iget v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    iput v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 386
    return-void
.end method

.method public synthetic lambda$saveTask$0$LaunchParamsPersister(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 233
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    return-object v0
.end method

.method onCleanupUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    return-void
.end method

.method onSystemReady()V
    .registers 4

    .line 124
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 125
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    .line 126
    return-void
.end method

.method onUnlockUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->loadLaunchParams(I)V

    .line 130
    return-void
.end method

.method removeRecordForPackage(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_48

    .line 391
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 392
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 393
    .local v4, "launchParamsFolder":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 394
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "j":I
    :goto_26
    if-ltz v6, :cond_45

    .line 395
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 396
    .local v3, "name":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 397
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 398
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v3    # "name":Landroid/content/ComponentName;
    :cond_42
    add-int/lit8 v6, v6, -0x1

    goto :goto_26

    .line 390
    .end local v2    # "userId":I
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v6    # "j":I
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 403
    .end local v1    # "i":I
    :cond_48
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    .line 404
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$Jn24e8Qu0NiiVH-qAilJf6vgADQ;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$Jn24e8Qu0NiiVH-qAilJf6vgADQ;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 408
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_64

    throw v2
.end method

.method saveTask(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 220
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 221
    return-void
.end method

.method saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 224
    iget-object v6, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 225
    .local v6, "name":Landroid/content/ComponentName;
    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 227
    .local v7, "userId":I
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 228
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    if-nez v0, :cond_1b

    .line 229
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v0

    goto :goto_1c

    .line 228
    :cond_1b
    move-object v8, v0

    .line 233
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    :goto_1c
    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    invoke-virtual {v8, v6, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 234
    .local v9, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result v10

    .line 236
    .local v10, "changed":Z
    iget-object v0, v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 238
    if-eqz v10, :cond_44

    .line 239
    iget-object v11, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v12, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, v7

    move-object v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 243
    :cond_44
    return-void
.end method
