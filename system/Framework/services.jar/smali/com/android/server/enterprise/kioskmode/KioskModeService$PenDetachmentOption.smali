.class final enum Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
.super Ljava/lang/Enum;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PenDetachmentOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;


# instance fields
.field private option:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 151
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string v1, "ACTION_MEMO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string v1, "AIR_COMMAND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 150
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    sget-object v5, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->option:I

    .line 155
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const-class v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 158
    iget v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->option:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
