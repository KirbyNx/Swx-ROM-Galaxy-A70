.class final enum Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
.super Ljava/lang/Enum;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGarageSpecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SupportedExternalSpenFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

.field public static final enum REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2619
    new-instance v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    const-string v1, "REMOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    .line 2618
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->$VALUES:[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2618
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2618
    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    return-object v0
.end method

.method public static values()[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    .registers 1

    .line 2618
    sget-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->$VALUES:[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-virtual {v0}, [Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    return-object v0
.end method
