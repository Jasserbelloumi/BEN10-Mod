.class public final Lpubgm/loader/databinding/ActMainBinding;
.super Ljava/lang/Object;
.source "ActMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final DrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final navigationView:Lcom/google/android/material/navigation/NavigationView;

.field private final rootView:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method private constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "DrawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "navigationView"    # Lcom/google/android/material/navigation/NavigationView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lpubgm/loader/databinding/ActMainBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 31
    iput-object p2, p0, Lpubgm/loader/databinding/ActMainBinding;->DrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 32
    iput-object p3, p0, Lpubgm/loader/databinding/ActMainBinding;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/ActMainBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 62
    move-object v0, p0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 64
    .local v0, "DrawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    const v1, 0x7f0a0285

    .line 65
    .local v1, "id":I
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/navigation/NavigationView;

    .line 66
    .local v2, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    if-eqz v2, :cond_0

    .line 70
    new-instance v3, Lpubgm/loader/databinding/ActMainBinding;

    move-object v4, p0

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v3, v4, v0, v2}, Lpubgm/loader/databinding/ActMainBinding;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/navigation/NavigationView;)V

    return-object v3

    .line 67
    :cond_0
    nop

    .line 72
    .end local v0    # "DrawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v2    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/ActMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/ActMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/ActMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/ActMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 49
    const v0, 0x7f0d001c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/ActMainBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/ActMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lpubgm/loader/databinding/ActMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lpubgm/loader/databinding/ActMainBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method
