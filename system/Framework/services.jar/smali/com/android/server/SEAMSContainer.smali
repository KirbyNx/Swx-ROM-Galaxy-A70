.class public Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field private static DDC_MAC_PERM:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field private static mContext:Landroid/content/Context;

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/seams/ddc/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sput-object p1, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 30
    .param p1, "macPermFile"    # Ljava/io/File;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seInfo"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    monitor-enter p0

    .line 85
    :try_start_9
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 86
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    const-string v6, "addEntryToMac_begin"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", seinfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local p0    # "this":Lcom/android/server/SEAMSContainer;
    :cond_37
    const/4 v5, 0x0

    .line 90
    .local v5, "isAddedMac":Z
    const/4 v6, 0x0

    .line 94
    .local v6, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_20e

    move-object v7, v0

    .line 95
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 97
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_3f
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_1e1
    .catchall {:try_start_3f .. :try_end_43} :catchall_20e

    move-object v10, v0

    .line 99
    .local v10, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_44
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 100
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v8, v0

    .line 101
    const-string/jumbo v0, "policy"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 102
    .local v0, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 103
    nop

    .end local v0    # "rootElement":Lorg/w3c/dom/Element;
    goto :goto_61

    .line 104
    :cond_5b
    invoke-virtual {v10, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5f} :catch_67
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_62
    .catchall {:try_start_44 .. :try_end_5f} :catchall_20e

    move-object v8, v0

    .line 105
    const/4 v6, 0x1

    .line 109
    :goto_61
    goto :goto_84

    .line 179
    .end local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_62
    move-exception v0

    move-object/from16 v23, v7

    goto/16 :goto_1e6

    .line 107
    .restart local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_67
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :try_start_68
    sget-object v11, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add entry: Exception ocurrs : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :goto_84
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_88} :catch_1e1
    .catchall {:try_start_68 .. :try_end_88} :catchall_20e

    if-nez v0, :cond_8e

    .line 112
    const/4 v0, 0x1

    :try_start_8b
    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_62
    .catchall {:try_start_8b .. :try_end_8e} :catchall_20e

    .line 115
    :cond_8e
    :try_start_8e
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    .line 116
    const-string/jumbo v0, "policy"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v11, v0

    .line 117
    .local v11, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .line 118
    .local v0, "policyElement":Lorg/w3c/dom/Element;
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 119
    .end local v0    # "policyElement":Lorg/w3c/dom/Element;
    .local v13, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v0, "signer"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v14, v0

    .line 120
    .local v14, "signer":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .line 121
    .local v15, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v16, 0x0

    .line 122
    .local v16, "signerElement":Lorg/w3c/dom/Element;
    const/16 v17, 0x0

    .line 123
    .local v17, "newElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 124
    .local v18, "seinfoElement":Lorg/w3c/dom/Element;
    const/4 v0, 0x0

    .line 125
    .local v0, "specialTag":Ljava/lang/String;
    const/16 v19, 0x0

    .line 126
    .local v19, "org_seInfo":Ljava/lang/String;
    const-string/jumbo v20, "service"
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_ba} :catch_1e1
    .catchall {:try_start_8e .. :try_end_ba} :catchall_20e

    move-object/from16 v21, v20

    .line 129
    .end local v0    # "specialTag":Ljava/lang/String;
    .local v21, "specialTag":Ljava/lang/String;
    :try_start_bc
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 130
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v0, v3, v12, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_cd} :catch_1ac
    .catchall {:try_start_bc .. :try_end_cd} :catchall_20e

    .line 134
    .end local v19    # "org_seInfo":Ljava/lang/String;
    .local v9, "org_seInfo":Ljava/lang/String;
    nop

    .line 136
    :try_start_ce
    const-string v12, ":"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d4} :catch_1e1
    .catchall {:try_start_ce .. :try_end_d4} :catchall_20e

    if-eqz v12, :cond_e2

    .line 137
    :try_start_d6
    const-string v12, ":"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, "tmpSeinfo":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v22, v12, v19
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e0} :catch_62
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_20e

    move-object/from16 v9, v22

    .line 141
    .end local v12    # "tmpSeinfo":[Ljava/lang/String;
    :cond_e2
    move-object/from16 v12, v21

    .end local v21    # "specialTag":Ljava/lang/String;
    .local v12, "specialTag":Ljava/lang/String;
    :try_start_e4
    invoke-interface {v8, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    move-object/from16 v17, v19

    .line 142
    move-object/from16 v21, v0

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .local v21, "pm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v0, "name"
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_ef} :catch_1e1
    .catchall {:try_start_e4 .. :try_end_ef} :catchall_20e

    move/from16 v22, v5

    move-object/from16 v5, v17

    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .local v5, "newElement":Lorg/w3c/dom/Element;
    .local v22, "isAddedMac":Z
    :try_start_f3
    invoke-interface {v5, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "seinfo"

    invoke-interface {v5, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "signer"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 145
    .end local v16    # "signerElement":Lorg/w3c/dom/Element;
    .local v0, "signerElement":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "seinfo"

    invoke-interface {v8, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_10a} :catch_1a6
    .catchall {:try_start_f3 .. :try_end_10a} :catchall_20e

    .line 146
    .end local v18    # "seinfoElement":Lorg/w3c/dom/Element;
    .local v4, "seinfoElement":Lorg/w3c/dom/Element;
    move-object/from16 v23, v7

    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v23, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_10c
    const-string/jumbo v7, "signature"

    invoke-interface {v0, v7, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v7, "value"

    invoke-interface {v4, v7, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_119
    move-object/from16 v19, v9

    .end local v9    # "org_seInfo":Ljava/lang/String;
    .restart local v19    # "org_seInfo":Ljava/lang/String;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_159

    .line 150
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    move-object v15, v9

    .line 151
    const-string/jumbo v9, "signature"

    invoke-interface {v15, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_150

    .line 152
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 153
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_14c

    .line 154
    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    move-object/from16 v24, v10

    .end local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v24, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const-string v10, "add entry: signature match found. Appending elem. "

    invoke-virtual {v9, v2, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_14b} :catch_1dd
    .catchall {:try_start_10c .. :try_end_14b} :catchall_20e

    goto :goto_14e

    .line 153
    .end local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_14c
    move-object/from16 v24, v10

    .line 156
    .end local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_14e
    const/4 v2, 0x1

    .line 157
    .end local v22    # "isAddedMac":Z
    .local v2, "isAddedMac":Z
    goto :goto_15d

    .line 149
    .end local v2    # "isAddedMac":Z
    .end local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "isAddedMac":Z
    :cond_150
    move-object/from16 v24, v10

    .end local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move-object/from16 v9, v19

    goto :goto_119

    .end local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_159
    move-object/from16 v24, v10

    .end local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move/from16 v2, v22

    .line 160
    .end local v7    # "i":I
    .end local v22    # "isAddedMac":Z
    .restart local v2    # "isAddedMac":Z
    :goto_15d
    if-nez v2, :cond_168

    .line 161
    :try_start_15f
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 163
    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 165
    :cond_168
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Element;->normalize()V

    .line 166
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v7

    .line 167
    .local v7, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v9

    .line 168
    .local v9, "transformer":Ljavax/xml/transform/Transformer;
    const/4 v10, 0x0

    .line 169
    .local v10, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v6, :cond_182

    .line 170
    move-object/from16 v16, v0

    .end local v0    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v16    # "signerElement":Lorg/w3c/dom/Element;
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .end local v10    # "source":Ljavax/xml/transform/dom/DOMSource;
    .local v0, "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_189

    .line 172
    .end local v16    # "signerElement":Lorg/w3c/dom/Element;
    .local v0, "signerElement":Lorg/w3c/dom/Element;
    .restart local v10    # "source":Ljavax/xml/transform/dom/DOMSource;
    :cond_182
    move-object/from16 v16, v0

    .end local v0    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v16    # "signerElement":Lorg/w3c/dom/Element;
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, v13}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 174
    .end local v10    # "source":Ljavax/xml/transform/dom/DOMSource;
    .local v0, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_189
    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v10, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 175
    .local v10, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v9, v0, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_19e

    .line 177
    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "source":Ljavax/xml/transform/dom/DOMSource;
    .local v17, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_19d} :catch_1a3
    .catchall {:try_start_15f .. :try_end_19d} :catchall_20e

    goto :goto_1a0

    .line 176
    .end local v17    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v0    # "source":Ljavax/xml/transform/dom/DOMSource;
    :cond_19e
    move-object/from16 v17, v0

    .line 178
    .end local v0    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_1a0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 179
    .end local v4    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v5    # "newElement":Lorg/w3c/dom/Element;
    .end local v7    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v9    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v10    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v11    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "specialTag":Ljava/lang/String;
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "signer":Lorg/w3c/dom/NodeList;
    .end local v15    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v16    # "signerElement":Lorg/w3c/dom/Element;
    .end local v17    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v19    # "org_seInfo":Ljava/lang/String;
    .end local v21    # "pm":Landroid/content/pm/IPackageManager;
    .end local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1a3
    move-exception v0

    move v5, v2

    goto :goto_1e6

    .end local v2    # "isAddedMac":Z
    .end local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v22    # "isAddedMac":Z
    :catch_1a6
    move-exception v0

    move-object/from16 v23, v7

    move/from16 v5, v22

    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto :goto_1e6

    .line 131
    .end local v22    # "isAddedMac":Z
    .end local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v5, "isAddedMac":Z
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v10, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v11    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v14    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v15    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v16    # "signerElement":Lorg/w3c/dom/Element;
    .local v17, "newElement":Lorg/w3c/dom/Element;
    .restart local v18    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v19    # "org_seInfo":Ljava/lang/String;
    .local v21, "specialTag":Ljava/lang/String;
    :catch_1ac
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v12, v21

    .line 132
    .end local v5    # "isAddedMac":Z
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v21    # "specialTag":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "specialTag":Ljava/lang/String;
    .restart local v22    # "isAddedMac":Z
    .restart local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_1b5
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get App\'s Info: failed : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1da} :catch_1dd
    .catchall {:try_start_1b5 .. :try_end_1da} :catchall_20e

    .line 133
    monitor-exit p0

    const/4 v2, -0x1

    return v2

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "specialTag":Ljava/lang/String;
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "signer":Lorg/w3c/dom/NodeList;
    .end local v15    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v16    # "signerElement":Lorg/w3c/dom/Element;
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v18    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v19    # "org_seInfo":Ljava/lang/String;
    .end local v24    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1dd
    move-exception v0

    move/from16 v5, v22

    goto :goto_1e6

    .end local v22    # "isAddedMac":Z
    .end local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "isAddedMac":Z
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1e1
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v23, v7

    .line 180
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_1e6
    :try_start_1e6
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding entry : the exception occurs "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v4, "adding entry : POLICY_FAILED is returned"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20b
    .catchall {:try_start_1e6 .. :try_end_20b} :catchall_20e

    .line 183
    monitor-exit p0

    const/4 v2, -0x1

    return v2

    .line 84
    .end local v5    # "isAddedMac":Z
    .end local v6    # "macPermExists":Z
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v23    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local p1    # "macPermFile":Ljava/io/File;
    .end local p2    # "signature":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "seInfo":Ljava/lang/String;
    :catchall_20e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 350
    const-string v0, "SEAMSContainer"

    if-nez p0, :cond_d

    .line 351
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "check id entry : curElem is null"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 355
    .local v1, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v2, 0x0

    .line 357
    .local v2, "returnElem":Lorg/w3c/dom/Element;
    :goto_14
    if-eqz v1, :cond_45

    .line 358
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "seinfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string/jumbo v3, "name"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 359
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_3b

    .line 360
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "check id entry : Match found..returning elem"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_3b
    move-object v2, v1

    .line 363
    goto :goto_45

    .line 365
    :cond_3d
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_14

    .line 367
    :cond_45
    :goto_45
    return-object v2
.end method

.method private createChangeDomain(I)I
    .registers 14
    .param p1, "pid"    # I

    .line 371
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    const-string v1, "SEAMSContainer"

    if-eqz v0, :cond_d

    .line 372
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "enter creating Domain"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_d
    sget-object v0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 379
    .local v2, "seinfo":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, "macPermFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    .line 381
    return v5

    .line 385
    :cond_23
    const/4 v4, -0x1

    :try_start_24
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 386
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v6, v0, v5, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_94

    move-object v2, v7

    .line 390
    nop

    .line 391
    invoke-static {v0}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 393
    .local v7, "cert":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 394
    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "orgSeinfo":[Ljava/lang/String;
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_71

    .line 396
    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "creating Domain , seinfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", orgSeinfo[0] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_71
    aget-object v2, v8, v5

    .line 401
    .end local v8    # "orgSeinfo":[Ljava/lang/String;
    :cond_73
    invoke-direct {p0, v3, v7, v0, v2}, Lcom/android/server/SEAMSContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_81

    .line 402
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "creating Domain: addToMac failed"

    invoke-virtual {v5, v1, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return v4

    .line 406
    :cond_81
    invoke-virtual {p0, v0, v2}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_8f

    .line 409
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "create domain: load container setting is done"

    invoke-virtual {v4, v1, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_8f
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->setDDCFlag(Z)Z

    .line 413
    return v5

    .line 387
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "cert":Ljava/lang/String;
    :catch_94
    move-exception v5

    .line 388
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get App Info: failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return v4
.end method

.method private static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    const-class v0, Lcom/android/server/SEAMSContainer;

    monitor-enter v0

    .line 223
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 224
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSignatureEntryFromMac packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_20
    const/4 v1, 0x0

    .line 228
    .local v1, "signature":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_df

    .line 230
    .local v2, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_25
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 231
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 233
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 234
    invoke-virtual {v3, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v4, v5

    .line 239
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    .line 240
    const-string/jumbo v5, "policy"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 241
    .local v5, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 242
    .local v6, "policyElement":Lorg/w3c/dom/Element;
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    move-object v6, v7

    .line 243
    const-string/jumbo v7, "signer"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 244
    .local v7, "signer":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 245
    .local v8, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_55
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_99

    .line 246
    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v8, v10

    .line 247
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 249
    .local v10, "packageElem":Lorg/w3c/dom/Element;
    :goto_68
    if-eqz v10, :cond_96

    .line 250
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "seinfo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8e

    const-string/jumbo v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 251
    const-string/jumbo v11, "signature"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_8b} :catch_bf
    .catchall {:try_start_25 .. :try_end_8b} :catchall_df

    move-object v1, v11

    .line 252
    monitor-exit v0

    return-object v1

    .line 254
    :cond_8e
    :try_start_8e
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v10, v11

    goto :goto_68

    .line 245
    .end local v10    # "packageElem":Lorg/w3c/dom/Element;
    :cond_96
    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    .line 259
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    .end local v7    # "signer":Lorg/w3c/dom/NodeList;
    .end local v8    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v9    # "i":I
    :cond_99
    goto :goto_dd

    .line 236
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_9a
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get singature from mac: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist, creating file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_bc} :catch_bf
    .catchall {:try_start_8e .. :try_end_bc} :catchall_df

    .line 237
    const/4 v5, 0x0

    monitor-exit v0

    return-object v5

    .line 257
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    :catch_bf
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Exception;
    :try_start_c0
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get singature from mac: the exception occurs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_c0 .. :try_end_dd} :catchall_df

    .line 261
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_dd
    monitor-exit v0

    return-object v1

    .line 222
    .end local v1    # "signature":Ljava/lang/String;
    .end local v2    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local p0    # "macPermFile":Ljava/io/File;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_df
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 197
    .local v0, "userId":I
    const-string v1, "SEAMSContainer"

    const/4 v2, 0x0

    if-nez p0, :cond_12

    .line 198
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "get singature from pkg: : packageName is null"

    invoke-virtual {v3, v1, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v2

    .line 201
    :cond_12
    const/4 v3, 0x0

    .line 203
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    :try_start_13
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 204
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/high16 v5, 0x8000000

    invoke-interface {v4, p0, v5, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object v3, v5

    .line 205
    if-eqz v3, :cond_49

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v5, :cond_49

    .line 206
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 207
    .local v5, "s":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_49

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v6, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_39
    array-length v8, v5

    if-ge v7, v8, :cond_48

    .line 210
    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_4b

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 212
    .end local v7    # "i":I
    :cond_48
    return-object v6

    .line 218
    .end local v5    # "s":[Landroid/content/pm/Signature;
    .end local v6    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    nop

    .line 219
    return-object v2

    .line 215
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    :catch_4b
    move-exception v4

    .line 216
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get singature from pkg: the exception occurs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v2
.end method

.method private static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-class v3, Lcom/android/server/SEAMSContainer;

    monitor-enter v3

    .line 275
    const/4 v4, 0x0

    .line 277
    .local v4, "isRemoveSuccess":Z
    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1fb

    move-object v5, v0

    .line 279
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_d
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 280
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 281
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1a0

    .line 282
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1d5
    .catchall {:try_start_d .. :try_end_1b} :catchall_1fb

    if-eqz v7, :cond_2f

    .line 283
    :try_start_1d
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string/jumbo v10, "macpermfile exists"

    invoke-virtual {v7, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28
    .catchall {:try_start_1d .. :try_end_27} :catchall_1fb

    goto :goto_2f

    .line 343
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_28
    move-exception v0

    move-object/from16 v15, p1

    :goto_2b
    move-object/from16 v20, v5

    goto/16 :goto_1dc

    .line 285
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v7
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_1d5
    .catchall {:try_start_2f .. :try_end_33} :catchall_1fb

    if-nez v7, :cond_39

    .line 286
    const/4 v7, 0x1

    :try_start_36
    invoke-virtual {v1, v7}, Ljava/io/File;->setWritable(Z)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_28
    .catchall {:try_start_36 .. :try_end_39} :catchall_1fb

    .line 287
    :cond_39
    :try_start_39
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    move-object v6, v7

    .line 294
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Element;->normalize()V

    .line 295
    const-string/jumbo v7, "policy"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 296
    .local v7, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .line 297
    .local v9, "policyElement":Lorg/w3c/dom/Element;
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v9, v10

    .line 298
    const-string/jumbo v10, "signer"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 299
    .local v10, "signer":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 300
    .local v11, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v12, 0x0

    .line 302
    .local v12, "removeElem":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5e
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_62} :catch_1d5
    .catchall {:try_start_39 .. :try_end_62} :catchall_1fb

    if-ge v13, v14, :cond_fc

    .line 303
    :try_start_64
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    move-object v11, v14

    .line 304
    const-string/jumbo v14, "signature"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_f3
    .catchall {:try_start_64 .. :try_end_72} :catchall_1fb

    move-object/from16 v15, p1

    :try_start_74
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e8

    .line 305
    invoke-static {v11, v2}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    move-object v12, v14

    .line 306
    if-eqz v12, :cond_c1

    .line 307
    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v14, :cond_b4

    .line 308
    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    move-object/from16 v16, v0

    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v16, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_90} :catch_f1
    .catchall {:try_start_74 .. :try_end_90} :catchall_1fb

    move/from16 v17, v4

    .end local v4    # "isRemoveSuccess":Z
    .local v17, "isRemoveSuccess":Z
    :try_start_92
    const-string/jumbo v4, "remove entry from mac:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " match found for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..deleting elem"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 307
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "isRemoveSuccess":Z
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "isRemoveSuccess":Z
    :cond_b4
    move-object/from16 v16, v0

    move/from16 v17, v4

    .line 310
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "isRemoveSuccess":Z
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "isRemoveSuccess":Z
    :goto_b8
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 311
    const/4 v4, 0x1

    .line 312
    .end local v17    # "isRemoveSuccess":Z
    .restart local v4    # "isRemoveSuccess":Z
    goto :goto_102

    .line 314
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_c1
    move-object/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "isRemoveSuccess":Z
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "isRemoveSuccess":Z
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove entry from mac: Signature matches but no entry for "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_de} :catch_e1
    .catchall {:try_start_92 .. :try_end_de} :catchall_1fb

    .line 315
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    .line 343
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "policyElement":Lorg/w3c/dom/Element;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v12    # "removeElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_e1
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v4, v17

    goto/16 :goto_1dc

    .line 302
    .end local v17    # "isRemoveSuccess":Z
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v10    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v12    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    :cond_e8
    move-object/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "isRemoveSuccess":Z
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "isRemoveSuccess":Z
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5e

    .line 343
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "policyElement":Lorg/w3c/dom/Element;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v12    # "removeElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "isRemoveSuccess":Z
    .restart local v4    # "isRemoveSuccess":Z
    :catch_f1
    move-exception v0

    goto :goto_f6

    :catch_f3
    move-exception v0

    move-object/from16 v15, p1

    :goto_f6
    move/from16 v17, v4

    move-object/from16 v20, v5

    .end local v4    # "isRemoveSuccess":Z
    .restart local v17    # "isRemoveSuccess":Z
    goto/16 :goto_1dc

    .line 302
    .end local v17    # "isRemoveSuccess":Z
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v10    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v12    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    :cond_fc
    move-object/from16 v15, p1

    move-object/from16 v16, v0

    move/from16 v17, v4

    .line 321
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_102
    if-eqz v4, :cond_16e

    .line 322
    :try_start_104
    const-string/jumbo v0, "service"

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 323
    .local v0, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10f} :catch_167
    .catchall {:try_start_104 .. :try_end_10f} :catchall_1fb

    if-nez v8, :cond_118

    .line 324
    :try_start_111
    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_115
    .catchall {:try_start_111 .. :try_end_114} :catchall_1fb

    goto :goto_118

    .line 343
    .end local v0    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "policyElement":Lorg/w3c/dom/Element;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v12    # "removeElem":Lorg/w3c/dom/Element;
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_115
    move-exception v0

    goto/16 :goto_2b

    .line 326
    .restart local v0    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v10    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v12    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_118
    :goto_118
    :try_start_118
    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11a} :catch_167
    .catchall {:try_start_118 .. :try_end_11a} :catchall_1fb

    if-eqz v8, :cond_126

    .line 327
    :try_start_11c
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string/jumbo v14, "remove entry from mac: Match found..deleted elem...writing to file"

    invoke-virtual {v8, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_126} :catch_115
    .catchall {:try_start_11c .. :try_end_126} :catchall_1fb

    .line 329
    :cond_126
    :try_start_126
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 330
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    .line 331
    .local v8, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    .line 332
    .local v13, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 333
    .local v14, "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v17, v0

    .end local v0    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .local v17, "servicePackageList":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 334
    .local v0, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v13, v14, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 335
    sget-boolean v18, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v18, :cond_160

    .line 336
    move-object/from16 v18, v0

    .end local v0    # "result":Ljavax/xml/transform/stream/StreamResult;
    .local v18, "result":Ljavax/xml/transform/stream/StreamResult;
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_14c} :catch_167
    .catchall {:try_start_126 .. :try_end_14c} :catchall_1fb

    move/from16 v19, v4

    .end local v4    # "isRemoveSuccess":Z
    .local v19, "isRemoveSuccess":Z
    :try_start_14e
    const-string v4, "SEAMSContainer"
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_150} :catch_159
    .catchall {:try_start_14e .. :try_end_150} :catchall_1fb

    move-object/from16 v20, v5

    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v20, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_152
    const-string/jumbo v5, "remove entry from mac:  entry removed from mac_permissions.xml"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    .line 343
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v8    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v9    # "policyElement":Lorg/w3c/dom/Element;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v12    # "removeElem":Lorg/w3c/dom/Element;
    .end local v13    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v18    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_159
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v4, v19

    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto/16 :goto_1dc

    .line 335
    .end local v19    # "isRemoveSuccess":Z
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v8    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v9    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v10    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v12    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v13    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "servicePackageList":Lorg/w3c/dom/NodeList;
    :cond_160
    move-object/from16 v18, v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    .line 338
    .end local v0    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "isRemoveSuccess":Z
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v13    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .restart local v19    # "isRemoveSuccess":Z
    .restart local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_166
    goto :goto_18f

    .line 343
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "policyElement":Lorg/w3c/dom/Element;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v12    # "removeElem":Lorg/w3c/dom/Element;
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v19    # "isRemoveSuccess":Z
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_167
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "isRemoveSuccess":Z
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "isRemoveSuccess":Z
    .restart local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto/16 :goto_1dc

    .line 339
    .end local v19    # "isRemoveSuccess":Z
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v10    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v12    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_16e
    move/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "isRemoveSuccess":Z
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "isRemoveSuccess":Z
    .restart local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " remove entry from mac: No match for packageName:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Please check again"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_18f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 342
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_199} :catch_19c
    .catchall {:try_start_152 .. :try_end_199} :catchall_1fb

    .line 345
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "policyElement":Lorg/w3c/dom/Element;
    .end local v10    # "signer":Lorg/w3c/dom/NodeList;
    .end local v11    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v12    # "removeElem":Lorg/w3c/dom/Element;
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_199
    move/from16 v4, v19

    goto :goto_1f9

    .line 343
    :catch_19c
    move-exception v0

    move/from16 v4, v19

    goto :goto_1dc

    .line 289
    .end local v19    # "isRemoveSuccess":Z
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :cond_1a0
    move-object/from16 v15, p1

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v20, v5

    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "isRemoveSuccess":Z
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v17, "isRemoveSuccess":Z
    .restart local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1a8
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1ce

    .line 290
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove entry from mac: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist, creating file"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1ce} :catch_1d1
    .catchall {:try_start_1a8 .. :try_end_1ce} :catchall_1fb

    .line 292
    :cond_1ce
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    .line 343
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1d1
    move-exception v0

    move/from16 v4, v17

    goto :goto_1dc

    .end local v17    # "isRemoveSuccess":Z
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "isRemoveSuccess":Z
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1d5
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v17, v4

    move-object/from16 v20, v5

    .line 344
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_1dc
    :try_start_1dc
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removing entry from mac: the exception occurs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f9
    .catchall {:try_start_1dc .. :try_end_1f9} :catchall_1fb

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f9
    monitor-exit v3

    return v4

    .line 274
    .end local v4    # "isRemoveSuccess":Z
    .end local v20    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local p0    # "macPermFile":Ljava/io/File;
    .end local p1    # "signature":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_1fb
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public changeAppDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seInfo"    # Ljava/lang/String;
    .param p3, "currentSeInfo"    # Ljava/lang/String;
    .param p4, "removeFlag"    # Z

    .line 418
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const-string v0, ":"

    const/4 v6, 0x0

    .line 419
    .local v6, "signature":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v7, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 422
    .local v8, "pid":I
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    const-string v10, "SEAMSContainer"

    if-eqz v9, :cond_3c

    .line 423
    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enter changing AppDomain : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getDDCFlag()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_3c
    const/4 v9, -0x1

    if-nez v2, :cond_47

    .line 427
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, " changing AppDomain is failed, no packageName found"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return v9

    .line 431
    :cond_47
    const/4 v11, 0x1

    if-eq v5, v11, :cond_57

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getDDCFlag()Z

    move-result v12

    if-nez v12, :cond_57

    .line 432
    invoke-direct {v1, v8}, Lcom/android/server/SEAMSContainer;->createChangeDomain(I)I

    move-result v12

    if-ne v12, v9, :cond_57

    .line 433
    return v9

    .line 437
    :cond_57
    const/4 v12, 0x0

    if-eqz v5, :cond_68

    .line 438
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 439
    if-nez v6, :cond_88

    .line 440
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "changing AppDomain, signature is null"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return v9

    .line 444
    :cond_68
    invoke-static/range {p1 .. p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 445
    if-nez v7, :cond_76

    .line 446
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "changing AppDomain, sigs is null"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return v9

    .line 449
    :cond_76
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    check-cast v6, Ljava/lang/String;

    .line 450
    sget-boolean v13, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v13, :cond_88

    .line 451
    sget-object v13, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "changing AppDomain, get signature"

    invoke-virtual {v13, v10, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_88
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v13, "macPermFile":Ljava/io/File;
    const-string/jumbo v14, "leave changing AppDomain"

    if-eqz v5, :cond_98

    .line 459
    :try_start_94
    invoke-static {v13, v6, v2}, Lcom/android/server/SEAMSContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a6

    .line 461
    :cond_98
    invoke-direct {v1, v13, v6, v2, v3}, Lcom/android/server/SEAMSContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_a6

    .line 462
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "changing AppDomain: addToMac failed"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return v9

    .line 467
    :cond_a6
    :goto_a6
    const-string/jumbo v15, "trustonicpartner"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10e

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_10e

    .line 468
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 469
    .local v15, "orgSeinfo":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v11

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_cd} :catch_12a

    move-object v3, v0

    .line 470
    .end local p2    # "seInfo":Ljava/lang/String;
    .local v3, "seInfo":Ljava/lang/String;
    :try_start_ce
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_10e

    .line 471
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pkgName = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", currentSeInfo = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", orgSeinfo[0] = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v15, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", orgSeinfo[1] = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget-object v11, v15, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", seinfo = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .end local v15    # "orgSeinfo":[Ljava/lang/String;
    :cond_10e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_11d

    .line 477
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "load container setting is done"

    invoke-virtual {v0, v10, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_11d} :catch_128

    .line 482
    :cond_11d
    nop

    .line 483
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_127

    .line 484
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    invoke-virtual {v0, v10, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_127
    return v12

    .line 479
    :catch_128
    move-exception v0

    goto :goto_12b

    .end local v3    # "seInfo":Ljava/lang/String;
    .restart local p2    # "seInfo":Ljava/lang/String;
    :catch_12a
    move-exception v0

    .line 480
    .end local p2    # "seInfo":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "seInfo":Ljava/lang/String;
    :goto_12b
    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v9, -0x1

    return v9
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "signature":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "macPermFile":Ljava/io/File;
    invoke-static {v1, p1}, Lcom/android/server/SEAMSContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public loadContainerSetting(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newSeInfo"    # Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 65
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v1, -0x1

    .line 66
    .local v1, "ret":I
    if-eqz v0, :cond_20

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 67
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_1f

    .line 68
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "The update is done"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1f
    const/4 v1, 0x0

    .line 72
    :cond_20
    return v1
.end method
