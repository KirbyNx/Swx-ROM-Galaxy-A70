.class Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;
.super Ljava/lang/Object;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XrActivityInfo"
.end annotation


# instance fields
.field callingPackage:Landroid/content/ComponentName;

.field requestedVrComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;

.field userId:I

.field xrFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 940
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    return-void
.end method

.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p2, "xrFlags"    # I
    .param p3, "requestedVrComponent"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Landroid/content/ComponentName;

    .line 943
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput p2, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    .line 945
    iput p4, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->userId:I

    .line 946
    iput-object p3, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    .line 947
    iput-object p5, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->callingPackage:Landroid/content/ComponentName;

    .line 948
    return-void
.end method


# virtual methods
.method public isXrActivity()Z
    .registers 2

    .line 959
    iget v0, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XrActivityInfo[xrFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") requestedVrComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->callingPackage:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
