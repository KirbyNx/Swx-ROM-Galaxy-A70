.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineListHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x1

.field private static final ENGINE_LIST_XML:Ljava/lang/String; = "sdp_engine_list.xml"

.field private static final TAG_ENGINE:Ljava/lang/String; = "engine"

.field private static final TAG_ENGINE_LIST:Ljava/lang/String; = "engine_list"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .registers 2

    .line 2082
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .line 2082
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 2082
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 2082
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2182
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2183
    .local v1, "engineListFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 2185
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x3

    .line 2186
    .local v3, "retry":I
    :goto_8
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "retry":I
    .local v4, "retry":I
    if-lez v3, :cond_d3

    .line 2187
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2189
    const/4 v3, 0x1

    .line 2191
    .local v3, "noError":Z
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile()Landroid/util/AtomicFile;

    move-result-object v5

    move-object v1, v5

    .line 2192
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    move-object v2, v5

    .line 2194
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 2195
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2196
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v6, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2198
    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v7

    .line 2199
    .local v7, "attrAlias":Ljava/lang/String;
    const/4 v8, -0x1

    .line 2200
    .local v8, "attrId":I
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 2202
    .local v9, "eventType":I
    :goto_30
    const/4 v10, 0x1

    if-eq v9, v10, :cond_95

    .line 2203
    const/4 v11, 0x2

    if-eq v9, v11, :cond_37

    goto :goto_8f

    .line 2207
    :cond_37
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2208
    .local v11, "tag":Ljava/lang/String;
    const-string v12, "engine"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 2209
    const-string v12, "alias"

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const-string/jumbo v12, "id"

    .line 2210
    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 2211
    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 2212
    nop

    .line 2213
    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 2212
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v8, v12

    .line 2215
    if-ltz v8, :cond_79

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_79

    goto :goto_7a

    :cond_79
    move v10, v13

    :goto_7a
    move v3, v10

    .line 2217
    :cond_7b
    if-eqz v3, :cond_87

    .line 2218
    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2219
    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 2220
    const/4 v8, -0x1

    goto :goto_8f

    .line 2222
    :cond_87
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "Suspicious of damaged file..."

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "engineListFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "noError":Z
    .end local v4    # "retry":I
    .end local p0    # "this":Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
    throw v10

    .line 2231
    .end local v11    # "tag":Ljava/lang/String;
    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "engineListFile":Landroid/util/AtomicFile;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "noError":Z
    .restart local v4    # "retry":I
    .restart local p0    # "this":Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
    :cond_8f
    :goto_8f
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_93} :catch_a1
    .catchall {:try_start_10 .. :try_end_93} :catchall_9f

    move v9, v10

    goto :goto_30

    .line 2233
    :cond_95
    nop

    .line 2241
    if-eqz v2, :cond_9e

    .line 2243
    :try_start_98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 2244
    :goto_9b
    goto :goto_9e

    :catch_9c
    move-exception v10

    goto :goto_9b

    .line 2233
    :cond_9e
    :goto_9e
    return-object v0

    .line 2241
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "attrAlias":Ljava/lang/String;
    .end local v8    # "attrId":I
    .end local v9    # "eventType":I
    :catchall_9f
    move-exception v5

    goto :goto_ca

    .line 2234
    :catch_a1
    move-exception v5

    .line 2235
    .local v5, "e":Ljava/lang/Exception;
    :try_start_a2
    iget-object v6, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v6, v6, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EngineListHandler :: Failed to get engine list... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v6, v7, v5, v8}, Lcom/android/server/SdpManagerService;->access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_9f

    .line 2237
    if-eqz v1, :cond_bf

    .line 2238
    const/4 v1, 0x0

    .line 2241
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_bf
    if-eqz v2, :cond_c7

    .line 2243
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    .line 2244
    :goto_c4
    goto :goto_c7

    :catch_c5
    move-exception v5

    goto :goto_c4

    .line 2247
    .end local v3    # "noError":Z
    :cond_c7
    :goto_c7
    move v3, v4

    goto/16 :goto_8

    .line 2241
    .restart local v3    # "noError":Z
    :goto_ca
    if-eqz v2, :cond_d2

    .line 2243
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    .line 2244
    :goto_cf
    goto :goto_d2

    :catch_d0
    move-exception v6

    goto :goto_cf

    .line 2246
    :cond_d2
    :goto_d2
    throw v5

    .line 2248
    .end local v3    # "noError":Z
    :cond_d3
    const/4 v3, 0x0

    return-object v3
.end method

.method private getEngineListXmlFile()Landroid/util/AtomicFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2093
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListXmlFile(I)Landroid/util/AtomicFile;
    .registers 5
    .param p1, "purpose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2098
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 2099
    const/4 p1, 0x0

    .line 2101
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2102
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz p1, :cond_14

    goto :goto_21

    .line 2104
    :cond_14
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to get engine list due to non-existence..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 2107
    :cond_21
    :goto_21
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private updateEngineListLocked()I
    .registers 17

    .line 2111
    move-object/from16 v1, p0

    const-string v0, "engine"

    const-string v2, "engine_list"

    const/4 v3, 0x0

    .line 2112
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 2114
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 2117
    .local v5, "engineListFile":Landroid/util/AtomicFile;
    const/16 v6, -0x63

    const/4 v7, 0x1

    :try_start_c
    invoke-direct {v1, v7}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v8
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_d0

    move-object v5, v8

    .line 2121
    nop

    .line 2123
    iget-object v8, v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v8, v8, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_25

    .line 2124
    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    .line 2125
    return v9

    .line 2128
    :cond_25
    const/4 v8, 0x1

    .line 2130
    .local v8, "noError":Z
    :try_start_26
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v10

    move-object v3, v10

    .line 2131
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v10

    .line 2133
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2134
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "UTF-8"

    invoke-interface {v10, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2135
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2136
    const-string/jumbo v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2141
    invoke-interface {v10, v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2142
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v11, v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v11, v11, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v11}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    .local v11, "nsize":I
    :goto_59
    if-ge v7, v11, :cond_93

    .line 2143
    iget-object v13, v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v13, v13, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v13}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 2144
    .local v13, "id":I
    iget-object v14, v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v14, v14, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v14}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2147
    .local v14, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-interface {v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2149
    const-string v15, "alias"

    invoke-virtual {v14}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v12, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2150
    const-string/jumbo v9, "id"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v12, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2152
    invoke-interface {v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2142
    nop

    .end local v13    # "id":I
    .end local v14    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    goto :goto_59

    .line 2157
    .end local v7    # "i":I
    .end local v11    # "nsize":I
    :cond_93
    invoke-interface {v10, v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2158
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2159
    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_9c} :catch_a6
    .catchall {:try_start_26 .. :try_end_9c} :catchall_a3

    .line 2171
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 2172
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 2174
    :cond_a0
    :goto_a0
    goto :goto_c1

    :catch_a1
    move-exception v0

    .line 2175
    goto :goto_c1

    .line 2170
    :catchall_a3
    move-exception v0

    move-object v2, v0

    goto :goto_c7

    .line 2160
    :catch_a6
    move-exception v0

    .line 2161
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a7
    iget-object v2, v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v2, v2, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v7, "SdpManagerService"

    const-string v9, "Failed to update engine list..."

    # invokes: Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v2, v7, v0, v9}, Lcom/android/server/SdpManagerService;->access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2165
    if-eqz v3, :cond_ba

    .line 2166
    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_ba
    .catchall {:try_start_a7 .. :try_end_ba} :catchall_a3

    .line 2168
    :cond_ba
    const/4 v8, 0x0

    .line 2171
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_a0

    .line 2172
    :try_start_bd
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_a1

    goto :goto_a0

    .line 2176
    :goto_c1
    if-eqz v8, :cond_c5

    .line 2177
    const/4 v6, 0x0

    goto :goto_c6

    :cond_c5
    nop

    .line 2176
    :goto_c6
    return v6

    .line 2171
    :goto_c7
    if-eqz v4, :cond_ce

    .line 2172
    :try_start_c9
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_ce

    .line 2174
    :catch_cd
    move-exception v0

    :cond_ce
    :goto_ce
    nop

    .line 2175
    throw v2

    .line 2118
    .end local v8    # "noError":Z
    :catch_d0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2119
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2120
    return v6
.end method
