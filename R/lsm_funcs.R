#' @include para_lsm.R
#' @noRd
NULL

#' @rdname parallel.lsm
parallel.calculate_correlation <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::calculate_correlation)
  return(result)
}

#' @rdname parallel.lsm
parallel.calculate_lsm <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::calculate_lsm)
  return(result)
}

#' @rdname parallel.lsm
parallel.check_landscape <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::check_landscape)
  return(result)
}

#' @rdname parallel.lsm
parallel.construct_buffer <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::construct_buffer)
  return(result)
}

#' @rdname parallel.lsm
parallel.data_info <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::data_info)
  return(result)
}

#' @rdname parallel.lsm
parallel.extract_lsm <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::extract_lsm)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_adjacencies <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_adjacencies)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_area_patches <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_area_patches)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_boundaries <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_boundaries)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_centroids <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_centroids)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_circumscribingcircle <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_circumscribingcircle)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_class_patches <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_class_patches)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_complexity <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_complexity)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_enn_patch <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_enn_patch)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_nearestneighbour <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_nearestneighbour)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_patches <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_patches)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_perimeter_patch <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_perimeter_patch)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_points <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_points)
  return(result)
}

#' @rdname parallel.lsm
parallel.get_unique_values <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::get_unique_values)
  return(result)
}

#' @rdname parallel.lsm
parallel.landscape_as_list <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::landscape_as_list)
  return(result)
}

#' @rdname parallel.lsm
parallel.list_lsm <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::list_lsm)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_ai <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_ai)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_area_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_area_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_area_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_area_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_area_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_area_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_ca <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_ca)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_cai_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_cai_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_cai_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_cai_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_cai_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_cai_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_circle_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_circle_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_circle_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_circle_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_circle_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_circle_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_clumpy <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_clumpy)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_cohesion <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_cohesion)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_contig_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_contig_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_contig_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_contig_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_contig_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_contig_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_core_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_core_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_core_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_core_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_core_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_core_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_cpland <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_cpland)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_dcad <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_dcad)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_dcore_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_dcore_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_dcore_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_dcore_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_dcore_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_dcore_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_division <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_division)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_ed <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_ed)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_enn_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_enn_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_enn_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_enn_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_enn_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_enn_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_frac_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_frac_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_frac_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_frac_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_frac_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_frac_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_gyrate_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_gyrate_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_gyrate_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_gyrate_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_gyrate_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_gyrate_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_iji <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_iji)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_lpi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_lpi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_lsi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_lsi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_mesh <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_mesh)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_ndca <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_ndca)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_nlsi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_nlsi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_np <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_np)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_pafrac <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_pafrac)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_para_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_para_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_para_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_para_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_para_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_para_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_pd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_pd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_pladj <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_pladj)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_pland <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_pland)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_shape_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_shape_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_shape_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_shape_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_shape_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_shape_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_split <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_split)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_tca <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_tca)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_c_te <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_c_te)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_ai <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_ai)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_area_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_area_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_area_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_area_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_area_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_area_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_cai_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_cai_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_cai_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_cai_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_cai_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_cai_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_circle_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_circle_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_circle_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_circle_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_circle_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_circle_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_cohesion <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_cohesion)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_condent <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_condent)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_contag <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_contag)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_contig_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_contig_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_contig_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_contig_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_contig_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_contig_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_core_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_core_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_core_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_core_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_core_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_core_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_dcad <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_dcad)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_dcore_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_dcore_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_dcore_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_dcore_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_dcore_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_dcore_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_division <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_division)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_ed <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_ed)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_enn_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_enn_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_enn_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_enn_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_enn_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_enn_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_ent <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_ent)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_frac_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_frac_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_frac_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_frac_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_frac_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_frac_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_gyrate_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_gyrate_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_gyrate_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_gyrate_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_gyrate_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_gyrate_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_iji <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_iji)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_joinent <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_joinent)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_lpi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_lpi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_lsi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_lsi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_mesh <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_mesh)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_msidi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_msidi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_msiei <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_msiei)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_mutinf <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_mutinf)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_ndca <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_ndca)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_np <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_np)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_pafrac <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_pafrac)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_para_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_para_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_para_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_para_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_para_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_para_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_pd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_pd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_pladj <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_pladj)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_pr <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_pr)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_prd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_prd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_relmutinf <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_relmutinf)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_rpr <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_rpr)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_shape_cv <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_shape_cv)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_shape_mn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_shape_mn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_shape_sd <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_shape_sd)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_shdi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_shdi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_shei <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_shei)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_sidi <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_sidi)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_siei <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_siei)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_split <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_split)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_ta <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_ta)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_tca <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_tca)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_l_te <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_l_te)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_area <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_area)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_cai <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_cai)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_circle <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_circle)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_contig <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_contig)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_core <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_core)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_enn <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_enn)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_frac <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_frac)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_gyrate <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_gyrate)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_ncore <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_ncore)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_para <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_para)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_perim <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_perim)
  return(result)
}

#' @rdname parallel.lsm
parallel.lsm_p_shape <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::lsm_p_shape)
  return(result)
}

#' @rdname parallel.lsm
parallel.matrix_to_raster <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::matrix_to_raster)
  return(result)
}

#' @rdname parallel.lsm
parallel.pad_raster <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::pad_raster)
  return(result)
}

#' @rdname parallel.lsm
parallel.points_as_mat <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::points_as_mat)
  return(result)
}

#' @rdname parallel.lsm
parallel.prepare_extras <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::prepare_extras)
  return(result)
}

#' @rdname parallel.lsm
parallel.proj_info <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::proj_info)
  return(result)
}

#' @rdname parallel.lsm
parallel.raster_to_points <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::raster_to_points)
  return(result)
}

#' @rdname parallel.lsm
parallel.rcpp_get_nearest_neighbor <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::rcpp_get_nearest_neighbor)
  return(result)
}

#' @rdname parallel.lsm
parallel.sample_lsm <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::sample_lsm)
  return(result)
}

#' @rdname parallel.lsm
parallel.scale_sample <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::scale_sample)
  return(result)
}

#' @rdname parallel.lsm
parallel.spatialize_lsm <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::spatialize_lsm)
  return(result)
}

#' @rdname parallel.lsm
parallel.unpad_raster <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::unpad_raster)
  return(result)
}

#' @rdname parallel.lsm
parallel.window_lsm <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::window_lsm)
  return(result)
}
