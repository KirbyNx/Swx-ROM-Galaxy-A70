.class public final enum Lcom/android/server/pm/FastBitmapDrawable$State;
.super Ljava/lang/Enum;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/pm/FastBitmapDrawable$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;


# instance fields
.field public final brightness:F

.field public final desaturation:F

.field public final interpolator:Landroid/animation/TimeInterpolator;

.field public final viewScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 27
    new-instance v7, Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v7, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 28
    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    sget-object v14, Lcom/android/server/pm/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const-string v9, "PRESSED"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const v12, 0x3ec8c8c9

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 29
    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-string v2, "FAST_SCROLL_HIGHLIGHTED"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const v6, 0x3f933333    # 1.15f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 30
    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-string v9, "FAST_SCROLL_UNHIGHLIGHTED"

    const/4 v10, 0x3

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 31
    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-string v2, "DISABLED"

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 25
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/pm/FastBitmapDrawable$State;

    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable$State;->PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->$VALUES:[Lcom/android/server/pm/FastBitmapDrawable$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V
    .registers 7
    .param p3, "desaturation"    # F
    .param p4, "brightness"    # F
    .param p5, "viewScale"    # F
    .param p6, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    .line 43
    iput p4, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    .line 44
    iput p5, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->viewScale:F

    .line 45
    iput-object p6, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->interpolator:Landroid/animation/TimeInterpolator;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/FastBitmapDrawable$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/FastBitmapDrawable$State;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->$VALUES:[Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v0}, [Lcom/android/server/pm/FastBitmapDrawable$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method
