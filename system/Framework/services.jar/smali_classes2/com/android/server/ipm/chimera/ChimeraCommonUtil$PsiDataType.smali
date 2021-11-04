.class public final enum Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;
.super Ljava/lang/Enum;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PsiDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

.field public static final enum AVG10:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

.field public static final enum TOTAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 137
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    const-string v1, "AVG10"

    const/4 v2, 0x0

    const-string v3, "avg10"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    .line 138
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    const-string v1, "TOTAL"

    const/4 v3, 0x1

    const-string/jumbo v4, "total"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    .line 136
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    sget-object v4, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->$VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput-object p3, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->mPath:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 136
    const-class v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;
    .registers 1

    .line 136
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->$VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    invoke-virtual {v0}, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->mPath:Ljava/lang/String;

    return-object v0
.end method
