.class public final enum Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
.super Ljava/lang/Enum;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

.field public static final enum COMMON:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

.field public static final enum REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

.field public static final enum SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1455
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->COMMON:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    .line 1456
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v1, "SHAKE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    .line 1457
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v1, "REQUEST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    .line 1454
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    sget-object v5, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->COMMON:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->$VALUES:[Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1454
    const-class v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
    .registers 1

    .line 1454
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->$VALUES:[Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    return-object v0
.end method
