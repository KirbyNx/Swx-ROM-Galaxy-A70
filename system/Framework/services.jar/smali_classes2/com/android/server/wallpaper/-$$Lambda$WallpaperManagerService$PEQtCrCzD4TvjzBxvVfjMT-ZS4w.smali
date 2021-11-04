.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$PEQtCrCzD4TvjzBxvVfjMT-ZS4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$PEQtCrCzD4TvjzBxvVfjMT-ZS4w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$PEQtCrCzD4TvjzBxvVfjMT-ZS4w;

    invoke-direct {v0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$PEQtCrCzD4TvjzBxvVfjMT-ZS4w;-><init>()V

    sput-object v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$PEQtCrCzD4TvjzBxvVfjMT-ZS4w;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$PEQtCrCzD4TvjzBxvVfjMT-ZS4w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$setWallpaperComponent$8(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method
