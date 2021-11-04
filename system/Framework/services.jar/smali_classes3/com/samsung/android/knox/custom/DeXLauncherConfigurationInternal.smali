.class public Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "DeXLauncherConfigurationInternal.java"


# static fields
.field public static final ALPHABETIC_GRID:Ljava/lang/String; = "alphabetical_order"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_GRID:Ljava/lang/String; = "custom_order"

.field private static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field private static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field private static final KEY_HOME_URL:Ljava/lang/String; = "shortcut_uri"

.field private static final KEY_ICON_RESOURCE:Ljava/lang/String; = "shortcut_resource"

.field private static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field private static final KEY_OPTION_ORDER:Ljava/lang/String; = "option_order"

.field private static final KEY_SHORTCUT_TITLE:Ljava/lang/String; = "shortcut_title"

.field private static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field private static final METHOD_ADD_URL_SHORTCUT:Ljava/lang/String; = "add_uri_shortcut"

.field private static final METHOD_CHANGE_ORDER:Ljava/lang/String; = "change_order"

.field private static final METHOD_GET_ORDER:Ljava/lang/String; = "get_order"

.field private static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field private static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field private static final METHOD_REMOVE_URL_SHORTCUT:Ljava/lang/String; = "remove_uri_shortcut"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_ALREADY_EMPTY:I = -0x6

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PAGE_FULL:I = -0x5

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final TYPE_GRID:Ljava/lang/String; = "type_order"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "content://com.sec.android.app.desktoplauncher.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method


# virtual methods
.method public addShortcut(Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "position"    # Landroid/graphics/Point;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v1, "component"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "add_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 120
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, "result":I
    return v2
.end method

.method public addURLShortcut(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 11
    .param p1, "position"    # Landroid/graphics/Point;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imgName"    # Ljava/lang/String;
    .param p5, "componentName"    # Landroid/content/ComponentName;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    const-string v1, "shortcut_title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "shortcut_uri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "shortcut_resource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "component"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "add_uri_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 100
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 101
    .local v2, "result":I
    return v2
.end method

.method public changeOrder(Ljava/lang/String;)I
    .registers 7
    .param p1, "order"    # Ljava/lang/String;

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "option_order"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "change_order"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 147
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "result":I
    return v2
.end method

.method public getOrder()I
    .registers 6

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "get_order"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 155
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, "result":I
    return v2
.end method

.method public makeEmptyPosition(Landroid/graphics/Point;)I
    .registers 7
    .param p1, "position"    # Landroid/graphics/Point;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "make_empty_position"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, "result":I
    return v2
.end method

.method public removeShortcut(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "remove_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 129
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, "result":I
    return v2
.end method

.method public removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "shortcut_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "component"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "remove_uri_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "result_bundle":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "result":I
    return v2
.end method
