.class final enum Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;
.super Ljava/lang/Enum;
.source "KeyCustomizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

.field public static final enum FAIL:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

.field public static final enum FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

.field public static final enum SUCCESS:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1632
    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    const-string v1, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    const-string v1, "FILE_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    .line 1631
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    sget-object v6, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1635
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1636
    iput p3, p0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->code:I

    .line 1637
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1631
    const-class v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;
    .registers 1

    .line 1631
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1640
    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->code:I

    return v0
.end method
