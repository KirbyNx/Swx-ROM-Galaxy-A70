.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;,
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    }
.end annotation


# static fields
.field private static final SETTINGS_ORDER_FILENAME:Ljava/lang/String; = "cocktail_order.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_CLASS_NAME:Ljava/lang/String;

.field private final TAG_COCKTAIL_ID:Ljava/lang/String;

.field private final TAG_COCKTAIL_ORDER:Ljava/lang/String;

.field private final TAG_ORDER:Ljava/lang/String;

.field private final TAG_PACKAGE:Ljava/lang/String;

.field private final TAG_PROVIDER:Ljava/lang/String;

.field private final TAG_USER_ID:Ljava/lang/String;

.field mCocktailOrderedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "cocktail_order"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ORDER:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "provider"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PROVIDER:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "order"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_ORDER:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "user_id"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_USER_ID:Ljava/lang/String;

    .line 42
    const-string v0, "cocktail_id"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ID:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "package"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PACKAGE:Ljava/lang/String;

    .line 44
    const-string v0, "class_name"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_CLASS_NAME:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getSettingsFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktail_order.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadStateLocked()V
    .registers 7

    .line 94
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 95
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 97
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 98
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_d} :catch_14
    .catchall {:try_start_5 .. :try_end_d} :catchall_12

    .line 102
    nop

    :goto_e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    goto :goto_2d

    .line 102
    :catchall_12
    move-exception v2

    goto :goto_2e

    .line 99
    :catch_14
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_15
    sget-object v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_12

    .line 102
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_e

    .line 104
    :goto_2d
    return-void

    .line 102
    :goto_2e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    throw v2
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 20
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .line 143
    move-object/from16 v1, p0

    const-string v2, "failed parsing "

    const-string v3, "UTF-8"

    const-string v4, "failed to close stream "

    const/4 v5, 0x0

    .line 144
    .local v5, "success":Z
    const/4 v6, 0x0

    .line 146
    .local v6, "version":I
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 147
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 149
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_19} :catch_556
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_19} :catch_4b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_19} :catch_40a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_364
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_19} :catch_2be
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_218
    .catchall {:try_start_a .. :try_end_19} :catchall_212

    .line 151
    .local v10, "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    :goto_19
    :try_start_19
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 152
    .local v11, "type":I
    const/4 v12, 0x2

    if-ne v11, v12, :cond_104

    .line 153
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "tag":Ljava/lang/String;
    const-string v13, "cocktail_order"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_2a} :catch_20a
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2a} :catch_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_2a} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2a} :catch_1f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_2a} :catch_1ea
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_1e3
    .catchall {:try_start_19 .. :try_end_2a} :catchall_1db

    if-eqz v13, :cond_41

    .line 155
    :try_start_2c
    const-string/jumbo v13, "version"

    invoke-interface {v7, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_33} :catch_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_33} :catch_1cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_33} :catch_1c8
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_1c4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_33} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_1bc
    .catchall {:try_start_2c .. :try_end_33} :catchall_5fd

    .line 157
    .local v13, "attributeValue":Ljava/lang/String;
    :try_start_33
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_37} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_37} :catch_1d0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_37} :catch_1c8
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_37} :catch_1c4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33 .. :try_end_37} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_1bc
    .catchall {:try_start_33 .. :try_end_37} :catchall_5fd

    move v6, v14

    .line 160
    goto :goto_3c

    .line 158
    :catch_39
    move-exception v0

    move-object v14, v0

    .line 159
    .local v14, "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    .line 161
    .end local v13    # "attributeValue":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :goto_3c
    move/from16 v16, v5

    move-object v9, v8

    goto/16 :goto_10b

    :cond_41
    :try_start_41
    const-string/jumbo v13, "provider"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fe

    .line 162
    const-string/jumbo v13, "order"

    invoke-interface {v7, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 163
    .local v13, "order":I
    const-string/jumbo v14, "user_id"

    invoke-interface {v7, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 164
    .local v14, "userId":I
    const-string v15, "cocktail_id"

    invoke-interface {v7, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 165
    .local v15, "cocktailId":I
    new-instance v8, Landroid/content/ComponentName;
    :try_end_6c
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_6c} :catch_20a
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_6c} :catch_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_6c} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_6c} :catch_1f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_6c} :catch_1ea
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6c} :catch_1e3
    .catchall {:try_start_41 .. :try_end_6c} :catchall_1db

    move/from16 v16, v5

    .end local v5    # "success":Z
    .local v16, "success":Z
    :try_start_6e
    const-string/jumbo v5, "package"
    :try_end_71
    .catch Ljava/lang/NullPointerException; {:try_start_6e .. :try_end_71} :catch_f6
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_71} :catch_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_e6
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6e .. :try_end_71} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_ce
    .catchall {:try_start_6e .. :try_end_71} :catchall_c6

    move/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "version":I
    .local v17, "version":I
    :try_start_74
    invoke-interface {v7, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "class_name"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 166
    .local v5, "providerInfo":Landroid/content/ComponentName;
    new-instance v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    invoke-direct {v6, v15, v5, v14, v13}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(ILandroid/content/ComponentName;II)V

    .line 167
    .local v6, "c":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    nop

    .line 168
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_8c} :catch_be
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_8c} :catch_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_8c} :catch_ae
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_8c} :catch_a6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_74 .. :try_end_8c} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8c} :catch_96
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8e

    goto/16 :goto_109

    .line 189
    .end local v5    # "providerInfo":Landroid/content/ComponentName;
    .end local v6    # "c":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v11    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "order":I
    .end local v14    # "userId":I
    .end local v15    # "cocktailId":I
    :catchall_8e
    move-exception v0

    move-object v2, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_5ff

    .line 186
    :catch_96
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_21c

    .line 184
    :catch_9e
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_2c2

    .line 182
    :catch_a6
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_368

    .line 180
    :catch_ae
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_40e

    .line 178
    :catch_b6
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_4b4

    .line 176
    :catch_be
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_55a

    .line 189
    .end local v17    # "version":I
    .local v6, "version":I
    :catchall_c6
    move-exception v0

    move/from16 v17, v6

    move-object v2, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_5ff

    .line 186
    .end local v17    # "version":I
    .restart local v6    # "version":I
    :catch_ce
    move-exception v0

    move/from16 v17, v6

    move-object v7, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_21c

    .line 184
    .end local v17    # "version":I
    .restart local v6    # "version":I
    :catch_d6
    move-exception v0

    move/from16 v17, v6

    move-object v7, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_2c2

    .line 182
    .end local v17    # "version":I
    .restart local v6    # "version":I
    :catch_de
    move-exception v0

    move/from16 v17, v6

    move-object v7, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_368

    .line 180
    .end local v17    # "version":I
    .restart local v6    # "version":I
    :catch_e6
    move-exception v0

    move/from16 v17, v6

    move-object v7, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_40e

    .line 178
    .end local v17    # "version":I
    .restart local v6    # "version":I
    :catch_ee
    move-exception v0

    move/from16 v17, v6

    move-object v7, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_4b4

    .line 176
    .end local v17    # "version":I
    .restart local v6    # "version":I
    :catch_f6
    move-exception v0

    move/from16 v17, v6

    move-object v7, v0

    move/from16 v5, v16

    .end local v6    # "version":I
    .restart local v17    # "version":I
    goto/16 :goto_55a

    .line 161
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .local v5, "success":Z
    .restart local v6    # "version":I
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .restart local v11    # "type":I
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_fe
    move/from16 v16, v5

    move/from16 v17, v6

    move-object v9, v8

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto :goto_109

    .line 152
    .end local v12    # "tag":Ljava/lang/String;
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :cond_104
    move/from16 v16, v5

    move/from16 v17, v6

    move-object v9, v8

    .line 172
    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    :goto_109
    move/from16 v6, v17

    .end local v17    # "version":I
    .restart local v6    # "version":I
    :goto_10b
    const/4 v5, 0x1

    if-ne v11, v5, :cond_1d4

    .line 173
    const/4 v5, 0x1

    .line 174
    .end local v16    # "success":Z
    .restart local v5    # "success":Z
    :try_start_10f
    iput-object v10, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 175
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readStateFromFileLocked: orderList="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/NullPointerException; {:try_start_10f .. :try_end_12e} :catch_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_10f .. :try_end_12e} :catch_1cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10f .. :try_end_12e} :catch_1c8
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_12e} :catch_1c4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10f .. :try_end_12e} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_12e} :catch_1bc
    .catchall {:try_start_10f .. :try_end_12e} :catchall_5fd

    .line 189
    nop

    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v11    # "type":I
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v8, "msgBuffer":Ljava/lang/StringBuffer;
    :goto_14b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_156

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_155} :catch_168
    .catchall {:try_start_132 .. :try_end_155} :catchall_165

    goto :goto_14b

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_156
    nop

    .line 204
    :try_start_157
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_184

    .line 205
    :catch_15b
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_18e

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_165
    move-exception v0

    move-object v3, v0

    goto :goto_19e

    .line 199
    :catch_168
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_16a
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catchall {:try_start_16a .. :try_end_17e} :catchall_165

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_181
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_185

    .line 207
    :goto_184
    goto :goto_19b

    .line 205
    :catch_185
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_18e
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v3    # "e":Ljava/io/IOException;
    :goto_19b
    const/4 v2, 0x0

    .line 211
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_19c
    goto/16 :goto_5fc

    .line 202
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_19e
    if-eqz v2, :cond_1bb

    .line 204
    :try_start_1a0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_1a4

    .line 207
    goto :goto_1ba

    .line 205
    :catch_1a4
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1ba
    const/4 v2, 0x0

    .line 210
    :cond_1bb
    throw v3

    .line 186
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_1bc
    move-exception v0

    move-object v7, v0

    goto/16 :goto_21c

    .line 184
    :catch_1c0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_2c2

    .line 182
    :catch_1c4
    move-exception v0

    move-object v7, v0

    goto/16 :goto_368

    .line 180
    :catch_1c8
    move-exception v0

    move-object v7, v0

    goto/16 :goto_40e

    .line 178
    :catch_1cc
    move-exception v0

    move-object v7, v0

    goto/16 :goto_4b4

    .line 176
    :catch_1d0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_55a

    .line 172
    .end local v5    # "success":Z
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .restart local v11    # "type":I
    .restart local v16    # "success":Z
    :cond_1d4
    move-object v8, v9

    move/from16 v5, v16

    move-object/from16 v9, p1

    goto/16 :goto_19

    .line 189
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v11    # "type":I
    .end local v16    # "success":Z
    .restart local v5    # "success":Z
    :catchall_1db
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v2, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto/16 :goto_5ff

    .line 186
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catch_1e3
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v7, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto :goto_21c

    .line 184
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catch_1ea
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v7, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto/16 :goto_2c2

    .line 182
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catch_1f2
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v7, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto/16 :goto_368

    .line 180
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catch_1fa
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v7, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto/16 :goto_40e

    .line 178
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catch_202
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v7, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto/16 :goto_4b4

    .line 176
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catch_20a
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v7, v0

    .end local v5    # "success":Z
    .end local v6    # "version":I
    .restart local v16    # "success":Z
    .restart local v17    # "version":I
    goto/16 :goto_55a

    .line 189
    .end local v16    # "success":Z
    .end local v17    # "version":I
    .restart local v5    # "success":Z
    .restart local v6    # "version":I
    :catchall_212
    move-exception v0

    move/from16 v16, v5

    move-object v2, v0

    .end local v5    # "success":Z
    .restart local v16    # "success":Z
    goto/16 :goto_5ff

    .line 186
    .end local v16    # "success":Z
    .restart local v5    # "success":Z
    :catch_218
    move-exception v0

    move/from16 v16, v5

    move-object v7, v0

    .line 187
    .local v7, "e":Ljava/lang/Exception;
    :goto_21c
    :try_start_21c
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_230
    .catchall {:try_start_21c .. :try_end_230} :catchall_5fd

    .line 189
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_234
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .restart local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_24d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_258

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_257} :catch_26a
    .catchall {:try_start_234 .. :try_end_257} :catchall_267

    goto :goto_24d

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_258
    nop

    .line 204
    :try_start_259
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25c} :catch_25d

    goto :goto_286

    .line 205
    :catch_25d
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_291

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_267
    move-exception v0

    move-object v3, v0

    goto :goto_2a0

    .line 199
    :catch_26a
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_26c
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_280
    .catchall {:try_start_26c .. :try_end_280} :catchall_267

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_283
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_286
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_286} :catch_288

    .line 207
    :goto_286
    goto/16 :goto_19b

    .line 205
    :catch_288
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_291
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2a0
    if-eqz v2, :cond_2bd

    .line 204
    :try_start_2a2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2a5
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2a5} :catch_2a6

    .line 207
    goto :goto_2bc

    .line 205
    :catch_2a6
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2bc
    const/4 v2, 0x0

    .line 210
    :cond_2bd
    throw v3

    .line 184
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_2be
    move-exception v0

    move/from16 v16, v5

    move-object v7, v0

    .line 185
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2c2
    :try_start_2c2
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catchall {:try_start_2c2 .. :try_end_2d6} :catchall_5fd

    .line 189
    nop

    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_2da
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .restart local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_2f3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_2fe

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2fd
    .catch Ljava/io/IOException; {:try_start_2da .. :try_end_2fd} :catch_310
    .catchall {:try_start_2da .. :try_end_2fd} :catchall_30d

    goto :goto_2f3

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_2fe
    nop

    .line 204
    :try_start_2ff
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_302
    .catch Ljava/io/IOException; {:try_start_2ff .. :try_end_302} :catch_303

    goto :goto_32c

    .line 205
    :catch_303
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_337

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_30d
    move-exception v0

    move-object v3, v0

    goto :goto_346

    .line 199
    :catch_310
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_312
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_326
    .catchall {:try_start_312 .. :try_end_326} :catchall_30d

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_329
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_329 .. :try_end_32c} :catch_32e

    .line 207
    :goto_32c
    goto/16 :goto_19b

    .line 205
    :catch_32e
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_337
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_346
    if-eqz v2, :cond_363

    .line 204
    :try_start_348
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34b
    .catch Ljava/io/IOException; {:try_start_348 .. :try_end_34b} :catch_34c

    .line 207
    goto :goto_362

    .line 205
    :catch_34c
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_362
    const/4 v2, 0x0

    .line 210
    :cond_363
    throw v3

    .line 182
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_364
    move-exception v0

    move/from16 v16, v5

    move-object v7, v0

    .line 183
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_368
    :try_start_368
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37c
    .catchall {:try_start_368 .. :try_end_37c} :catchall_5fd

    .line 189
    nop

    .end local v7    # "e":Ljava/io/IOException;
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .restart local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_399
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_3a4

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3a3
    .catch Ljava/io/IOException; {:try_start_380 .. :try_end_3a3} :catch_3b6
    .catchall {:try_start_380 .. :try_end_3a3} :catchall_3b3

    goto :goto_399

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_3a4
    nop

    .line 204
    :try_start_3a5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a8
    .catch Ljava/io/IOException; {:try_start_3a5 .. :try_end_3a8} :catch_3a9

    goto :goto_3d2

    .line 205
    :catch_3a9
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3dd

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_3b3
    move-exception v0

    move-object v3, v0

    goto :goto_3ec

    .line 199
    :catch_3b6
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3b8
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3cc
    .catchall {:try_start_3b8 .. :try_end_3cc} :catchall_3b3

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_3cf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d2
    .catch Ljava/io/IOException; {:try_start_3cf .. :try_end_3d2} :catch_3d4

    .line 207
    :goto_3d2
    goto/16 :goto_19b

    .line 205
    :catch_3d4
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3dd
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3ec
    if-eqz v2, :cond_409

    .line 204
    :try_start_3ee
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3f1
    .catch Ljava/io/IOException; {:try_start_3ee .. :try_end_3f1} :catch_3f2

    .line 207
    goto :goto_408

    .line 205
    :catch_3f2
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_408
    const/4 v2, 0x0

    .line 210
    :cond_409
    throw v3

    .line 180
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_40a
    move-exception v0

    move/from16 v16, v5

    move-object v7, v0

    .line 181
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_40e
    :try_start_40e
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_422
    .catchall {:try_start_40e .. :try_end_422} :catchall_5fd

    .line 189
    nop

    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_426
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .restart local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_43f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_44a

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_449
    .catch Ljava/io/IOException; {:try_start_426 .. :try_end_449} :catch_45c
    .catchall {:try_start_426 .. :try_end_449} :catchall_459

    goto :goto_43f

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_44a
    nop

    .line 204
    :try_start_44b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44e
    .catch Ljava/io/IOException; {:try_start_44b .. :try_end_44e} :catch_44f

    goto :goto_478

    .line 205
    :catch_44f
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_483

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_459
    move-exception v0

    move-object v3, v0

    goto :goto_492

    .line 199
    :catch_45c
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_45e
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_472
    .catchall {:try_start_45e .. :try_end_472} :catchall_459

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_475
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_478
    .catch Ljava/io/IOException; {:try_start_475 .. :try_end_478} :catch_47a

    .line 207
    :goto_478
    goto/16 :goto_19b

    .line 205
    :catch_47a
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_483
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_492
    if-eqz v2, :cond_4af

    .line 204
    :try_start_494
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_497
    .catch Ljava/io/IOException; {:try_start_494 .. :try_end_497} :catch_498

    .line 207
    goto :goto_4ae

    .line 205
    :catch_498
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_4ae
    const/4 v2, 0x0

    .line 210
    :cond_4af
    throw v3

    .line 178
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_4b0
    move-exception v0

    move/from16 v16, v5

    move-object v7, v0

    .line 179
    .local v7, "e":Ljava/lang/NumberFormatException;
    :goto_4b4
    :try_start_4b4
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c8
    .catchall {:try_start_4b4 .. :try_end_4c8} :catchall_5fd

    .line 189
    nop

    .end local v7    # "e":Ljava/lang/NumberFormatException;
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_4cc
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .restart local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_4e5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_4f0

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4ef
    .catch Ljava/io/IOException; {:try_start_4cc .. :try_end_4ef} :catch_502
    .catchall {:try_start_4cc .. :try_end_4ef} :catchall_4ff

    goto :goto_4e5

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_4f0
    nop

    .line 204
    :try_start_4f1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f4
    .catch Ljava/io/IOException; {:try_start_4f1 .. :try_end_4f4} :catch_4f5

    goto :goto_51e

    .line 205
    :catch_4f5
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_529

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_4ff
    move-exception v0

    move-object v3, v0

    goto :goto_538

    .line 199
    :catch_502
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_504
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_518
    .catchall {:try_start_504 .. :try_end_518} :catchall_4ff

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_51b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51e
    .catch Ljava/io/IOException; {:try_start_51b .. :try_end_51e} :catch_520

    .line 207
    :goto_51e
    goto/16 :goto_19b

    .line 205
    :catch_520
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_529
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_538
    if-eqz v2, :cond_555

    .line 204
    :try_start_53a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_53d
    .catch Ljava/io/IOException; {:try_start_53a .. :try_end_53d} :catch_53e

    .line 207
    goto :goto_554

    .line 205
    :catch_53e
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_554
    const/4 v2, 0x0

    .line 210
    :cond_555
    throw v3

    .line 176
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_556
    move-exception v0

    move/from16 v16, v5

    move-object v7, v0

    .line 177
    .local v7, "e":Ljava/lang/NullPointerException;
    :goto_55a
    :try_start_55a
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56e
    .catchall {:try_start_55a .. :try_end_56e} :catchall_5fd

    .line 189
    nop

    .end local v7    # "e":Ljava/lang/NullPointerException;
    if-nez v5, :cond_5fc

    .line 190
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_572
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .restart local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_58b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    if-eqz v9, :cond_596

    .line 197
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_595
    .catch Ljava/io/IOException; {:try_start_572 .. :try_end_595} :catch_5a8
    .catchall {:try_start_572 .. :try_end_595} :catchall_5a5

    goto :goto_58b

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "file":Landroid/util/AtomicFile;
    .end local v8    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_596
    nop

    .line 204
    :try_start_597
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_59a
    .catch Ljava/io/IOException; {:try_start_597 .. :try_end_59a} :catch_59b

    goto :goto_5c4

    .line 205
    :catch_59b
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5cf

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_5a5
    move-exception v0

    move-object v3, v0

    goto :goto_5de

    .line 199
    :catch_5a8
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5aa
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5be
    .catchall {:try_start_5aa .. :try_end_5be} :catchall_5a5

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_19c

    .line 204
    :try_start_5c1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c4
    .catch Ljava/io/IOException; {:try_start_5c1 .. :try_end_5c4} :catch_5c6

    .line 207
    :goto_5c4
    goto/16 :goto_19b

    .line 205
    :catch_5c6
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5cf
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5de
    if-eqz v2, :cond_5fb

    .line 204
    :try_start_5e0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5e3
    .catch Ljava/io/IOException; {:try_start_5e0 .. :try_end_5e3} :catch_5e4

    .line 207
    goto :goto_5fa

    .line 205
    :catch_5e4
    move-exception v0

    move-object v7, v0

    .line 206
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v7    # "e":Ljava/io/IOException;
    :goto_5fa
    const/4 v2, 0x0

    .line 210
    :cond_5fb
    throw v3

    .line 213
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_5fc
    :goto_5fc
    return-void

    .line 189
    :catchall_5fd
    move-exception v0

    move-object v2, v0

    :goto_5ff
    if-nez v5, :cond_68b

    .line 190
    const/4 v7, 0x0

    .line 192
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_602
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v8

    .line 193
    .local v8, "file":Landroid/util/AtomicFile;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v9

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "str":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v9, "msgBuffer":Ljava/lang/StringBuffer;
    :goto_61b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    if-eqz v10, :cond_626

    .line 197
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_625
    .catch Ljava/io/IOException; {:try_start_602 .. :try_end_625} :catch_638
    .catchall {:try_start_602 .. :try_end_625} :catchall_635

    goto :goto_61b

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    .end local v8    # "file":Landroid/util/AtomicFile;
    .end local v9    # "msgBuffer":Ljava/lang/StringBuffer;
    :cond_626
    nop

    .line 204
    :try_start_627
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_62a
    .catch Ljava/io/IOException; {:try_start_627 .. :try_end_62a} :catch_62b

    goto :goto_654

    .line 205
    :catch_62b
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_65e

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_635
    move-exception v0

    move-object v2, v0

    goto :goto_66d

    .line 199
    :catch_638
    move-exception v0

    move-object v3, v0

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_63a
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64e
    .catchall {:try_start_63a .. :try_end_64e} :catchall_635

    .line 202
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_68b

    .line 204
    :try_start_651
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_654
    .catch Ljava/io/IOException; {:try_start_651 .. :try_end_654} :catch_655

    .line 207
    :goto_654
    goto :goto_66b

    .line 205
    :catch_655
    move-exception v0

    move-object v3, v0

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_65e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v3    # "e":Ljava/io/IOException;
    :goto_66b
    const/4 v3, 0x0

    .end local v7    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    goto :goto_68b

    .line 202
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    :goto_66d
    if-eqz v7, :cond_68a

    .line 204
    :try_start_66f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_672
    .catch Ljava/io/IOException; {:try_start_66f .. :try_end_672} :catch_673

    .line 207
    goto :goto_689

    .line 205
    :catch_673
    move-exception v0

    move-object v3, v0

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v3    # "e":Ljava/io/IOException;
    :goto_689
    const/4 v7, 0x0

    .line 210
    :cond_68a
    throw v2

    .line 212
    .end local v7    # "br":Ljava/io/BufferedReader;
    :cond_68b
    :goto_68b
    throw v2
.end method

.method private saveStateLocked()V
    .registers 6

    .line 78
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 81
    .local v0, "file":Landroid/util/AtomicFile;
    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 82
    .local v1, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1c

    .line 85
    :cond_12
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 86
    sget-object v2, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to save state, restoring backup."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 90
    :goto_1c
    goto :goto_34

    .line 88
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed open state file for write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :goto_34
    return-void
.end method

.method private savedStateFile()Landroid/util/AtomicFile;
    .registers 6

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->getSettingsFile(I)Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "settingsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_23

    .line 66
    sget-object v2, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "savedStateFile Failed mkdirs"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_23
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/cocktail_order.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 71
    sget-object v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed rename to setting file."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v2    # "oldFile":Ljava/io/File;
    :cond_37
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 14
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .line 110
    const-string/jumbo v0, "provider"

    const-string v1, "cocktail_order"

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-nez v3, :cond_12

    .line 111
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write state: no order info"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 114
    :cond_12
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 115
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    invoke-interface {v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 119
    .local v5, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_30
    if-ge v7, v5, :cond_7d

    .line 120
    iget-object v8, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 121
    .local v8, "cocktailOrderInfo":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    iget-object v9, v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    .line 122
    .local v9, "pInfo":Landroid/content/ComponentName;
    if-eqz v9, :cond_7a

    .line 123
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const-string/jumbo v10, "order"

    iget v11, v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const-string/jumbo v10, "user_id"

    iget v11, v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    const-string v10, "cocktail_id"

    iget v11, v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    const-string/jumbo v10, "package"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const-string v10, "class_name"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .end local v8    # "cocktailOrderInfo":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    .end local v9    # "pInfo":Landroid/content/ComponentName;
    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 132
    .end local v7    # "i":I
    :cond_7d
    invoke-interface {v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_83} :catch_84

    .line 134
    return v4

    .line 135
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "N":I
    :catch_84
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v2
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 6

    .line 320
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CocktailOrderManager]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "dumpString":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_a
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_33

    .line 323
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 324
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_2c

    .line 325
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    iget v4, v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 327
    .end local v3    # "i":I
    :cond_2c
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    nop

    .end local v2    # "size":I
    goto :goto_39

    .line 329
    :cond_33
    const-string/jumbo v2, "null\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_3f

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 331
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public getMatchedSortIds(Ljava/util/ArrayList;Landroid/util/SparseArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 262
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "enabledPanelInfoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->loadStateLocked()V

    .line 265
    sget-object v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMatchedSortIds: loadedorder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_28
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_63

    .line 269
    :cond_35
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 270
    new-instance v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;-><init>(Lcom/android/server/cocktailbar/settings/CocktailOrderManager;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 272
    :cond_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 273
    .local v0, "sortedIds":[I
    array-length v1, v0

    .line 274
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v1, :cond_62

    .line 275
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 277
    .end local v2    # "i":I
    :cond_62
    return-object v0

    .line 267
    .end local v0    # "sortedIds":[I
    .end local v1    # "size":I
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public setOrderedList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "orderedCocktail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 218
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->saveStateLocked()V

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
