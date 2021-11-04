.class abstract Lcom/android/server/wm/PackageSettingsManager$FileHandler;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FileHandler"
.end annotation


# instance fields
.field private final DATA_DIRECTORY:Ljava/lang/String;

.field private mFileManager:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mRequestPackageSetting:I

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "fileManager"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
    .param p3, "requestPackageSetting"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->DATA_DIRECTORY:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileManager:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 308
    iput p3, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mRequestPackageSetting:I

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->DATA_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFilePath:Ljava/lang/String;

    .line 310
    iput-object p5, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileName:Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileManager:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    # invokes: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->registerFileHandler(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V
    invoke-static {p1, p0}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->access$500(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V

    .line 313
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 295
    iget v0, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mRequestPackageSetting:I

    return v0
.end method


# virtual methods
.method abstract loadFile(ILjava/io/ObjectInputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method requestToSave(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileManager:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    iget v1, p0, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mRequestPackageSetting:I

    # invokes: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->requestToSave(II)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->access$600(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;II)V

    .line 322
    return-void
.end method

.method abstract saveFile(ILjava/io/ObjectOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
