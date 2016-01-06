.class final Lcom/android/settings/DevelopmentSettings$3;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isShowingDeveloperOptions(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1772
    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$3;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1794
    const/4 v0, 0x0

    .line 1801
    :cond_0
    :goto_0
    return-object v0

    .line 1797
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # invokes: Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->access$700()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1799
    const-string v1, "oem_unlock_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1782
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$3;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1783
    const/4 v1, 0x0

    .line 1788
    :goto_0
    return-object v1

    .line 1786
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1787
    .local v0, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v1, 0x7f050015

    iput v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 1788
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method