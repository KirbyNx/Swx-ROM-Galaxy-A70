.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;
.super Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .line 8544
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    .line 8544
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method public getWorkspaceTypeList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .line 8552
    const/4 v0, 0x0

    .line 8553
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 8555
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8556
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 8557
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 8558
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    move-object v1, v4

    .line 8559
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8560
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v4, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 8561
    .local v4, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 8562
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_4e
    .catchall {:try_start_3 .. :try_end_3d} :catchall_4c

    .line 8568
    nop

    .line 8570
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 8572
    goto :goto_43

    .line 8571
    :catch_42
    move-exception v5

    .line 8562
    :goto_43
    return-object v2

    .line 8568
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :cond_44
    if-eqz v0, :cond_71

    .line 8570
    :try_start_46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    .line 8572
    :goto_49
    goto :goto_71

    .line 8571
    :catch_4a
    move-exception v3

    goto :goto_49

    .line 8568
    :catchall_4c
    move-exception v2

    goto :goto_72

    .line 8564
    :catch_4e
    move-exception v3

    .line 8565
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8566
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_4c

    .line 8568
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_71

    .line 8570
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_4a

    goto :goto_49

    .line 8575
    :cond_71
    :goto_71
    return-object v2

    .line 8568
    :goto_72
    if-eqz v0, :cond_79

    .line 8570
    :try_start_74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    .line 8572
    goto :goto_79

    .line 8571
    :catch_78
    move-exception v3

    .line 8574
    :cond_79
    :goto_79
    throw v2
.end method

.method public onNewUserCreated(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 8547
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->onNewUserCreated(I)V

    .line 8548
    return-void
.end method

.method public setAppSeparationOwnership(Lcom/samsung/android/knox/container/ContainerCreationParams;)V
    .registers 4
    .param p1, "params"    # Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 8585
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAppSeparationOwnership."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8586
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    .line 8587
    return-void
.end method

.method public validateLicenses()V
    .registers 2

    .line 8580
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->validateLicenses()V

    .line 8581
    return-void
.end method
