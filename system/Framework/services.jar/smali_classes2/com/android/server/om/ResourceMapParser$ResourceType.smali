.class final enum Lcom/android/server/om/ResourceMapParser$ResourceType;
.super Ljava/lang/Enum;
.source "ResourceMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/ResourceMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/om/ResourceMapParser$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/om/ResourceMapParser$ResourceType;

.field public static final enum COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

.field public static final enum DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 151
    new-instance v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    const-string v1, "DRAWABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/om/ResourceMapParser$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    .line 152
    new-instance v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    const-string v1, "COLOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/om/ResourceMapParser$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/om/ResourceMapParser$ResourceType;

    sget-object v4, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/om/ResourceMapParser$ResourceType;->$VALUES:[Lcom/android/server/om/ResourceMapParser$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/om/ResourceMapParser$ResourceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const-class v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/ResourceMapParser$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/om/ResourceMapParser$ResourceType;
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/om/ResourceMapParser$ResourceType;->$VALUES:[Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-virtual {v0}, [Lcom/android/server/om/ResourceMapParser$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/om/ResourceMapParser$ResourceType;

    return-object v0
.end method
