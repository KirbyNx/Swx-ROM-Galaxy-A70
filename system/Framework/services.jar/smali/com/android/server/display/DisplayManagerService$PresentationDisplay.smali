.class Lcom/android/server/display/DisplayManagerService$PresentationDisplay;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationDisplay"
.end annotation


# instance fields
.field private displayId:I

.field private packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5023
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 5024
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 5025
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    .line 5018
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    .line 5018
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 5034
    if-eqz p1, :cond_1a

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    iget v0, v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    if-ne v0, v1, :cond_1a

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 5038
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 5042
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 5029
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
