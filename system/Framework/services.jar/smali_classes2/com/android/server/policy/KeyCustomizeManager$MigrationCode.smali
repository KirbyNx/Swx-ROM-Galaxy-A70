.class final enum Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
.super Ljava/lang/Enum;
.source "KeyCustomizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MigrationCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

.field public static final enum B2B_DELTA_TOP:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

.field public static final enum B2B_DELTA_XCOVER:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

.field public static final enum NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

.field public static final enum VZW_DELTA:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1605
    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    const-string v1, "VZW_DELTA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->VZW_DELTA:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    const-string v1, "B2B_DELTA_XCOVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->B2B_DELTA_XCOVER:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    const-string v1, "B2B_DELTA_TOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->B2B_DELTA_TOP:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1604
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    sget-object v6, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->VZW_DELTA:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->B2B_DELTA_XCOVER:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

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

    .line 1608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1606
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->code:I

    .line 1609
    iput p3, p0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->code:I

    .line 1610
    return-void
.end method

.method public static getMigrationCode(I)Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
    .registers 6
    .param p0, "key"    # I

    .line 1617
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->values()[Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1618
    .local v3, "resultCode":Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
    iget v4, v3, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->code:I

    if-ne v4, p0, :cond_f

    .line 1619
    return-object v3

    .line 1617
    .end local v3    # "resultCode":Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1622
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMigrationCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is nothing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1604
    const-class v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
    .registers 1

    .line 1604
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1613
    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->code:I

    return v0
.end method
